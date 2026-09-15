// Reference only — copy into a plugin-sdk project targeting gta_sa 1.0 US.
#include "plugin.h"
#include "CPed.h"
#include "CPad.h"
#include "CTimer.h"
#include "CVector.h"

using namespace plugin;

static int boostCharges = 2;
static unsigned lastBoost = 0;
static unsigned lastDash = 0;
static bool wasJump = false;

class SaAwFps {
public:
    SaAwFps() {
        Events::gameProcessEvent += [] {
            CPed* p = FindPlayerPed();
            if (!p || !p->IsAlive() || p->m_nPedFlags.bInVehicle)
                return;
            CPad* pad = p->GetPadFromPlayer();
            if (!pad)
                return;
            const bool jump = pad->GetJump();
            const bool grounded = p->m_nPedFlags.bIsStanding;
            if (jump && !wasJump && !grounded && boostCharges > 0) {
                CVector v = p->m_vecMoveSpeed;
                v.z = 0.18f;
                p->m_vecMoveSpeed = v;
                boostCharges--;
                lastBoost = CTimer::m_snTimeInMilliseconds;
            }
            wasJump = jump;
            if (grounded && boostCharges < 2) {
                if (CTimer::m_snTimeInMilliseconds - lastBoost > 2800) {
                    boostCharges++;
                    lastBoost = CTimer::m_snTimeInMilliseconds;
                }
            }
            if (pad->GetSprint() && pad->GetPedWalkUpDown() < 0
                && CTimer::m_snTimeInMilliseconds - lastDash > 1400) {
                CVector fwd = p->GetForward();
                fwd.Normalise();
                p->m_vecMoveSpeed.x += fwd.x * 0.35f;
                p->m_vecMoveSpeed.y += fwd.y * 0.35f;
                lastDash = CTimer::m_snTimeInMilliseconds;
            }
        };
    }
} saAwFps;
