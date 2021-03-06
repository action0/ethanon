/*--------------------------------------------------------------------------------------
 Ethanon Engine (C) Copyright 2008-2013 Andre Santee
 http://ethanonengine.com/

	Permission is hereby granted, free of charge, to any person obtaining a copy of this
	software and associated documentation files (the "Software"), to deal in the
	Software without restriction, including without limitation the rights to use, copy,
	modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
	and to permit persons to whom the Software is furnished to do so, subject to the
	following conditions:

	The above copyright notice and this permission notice shall be included in all
	copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
	INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
	PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
	HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
	CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
	OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--------------------------------------------------------------------------------------*/

#ifndef GS2D_ANDROID_INPUT_H_
#define GS2D_ANDROID_INPUT_H_

#include <vector>

#include "../MobileInput.h"

#include "../../Platform/Android/Platform.android.h"

namespace gs2d {

class AndroidInput : public MobileInput, public Platform::NativeCommandForwarder
{
	math::Vector3 m_accelerometer;
	const std::string *m_input;
	KeyStateManager m_keyStates[GS_NUM_KEYS];
	std::string m_keyName[GS_NUM_KEYS];
	std::size_t m_numJoysticks;
	std::size_t m_maxJoysticks;
	std::vector<std::string>     m_joyButtonsPressedList;
	std::vector<std::size_t>     m_joyNumButtons;
	std::vector<std::vector<KeyStateManager> > m_joyKeyStates;
	std::vector<std::vector<KeyStateManager> > m_joystickDpadStates;
	std::vector<math::Vector2> m_xy;
	std::vector<float> m_z;
	std::vector<float> m_rudder;


	static const std::string KEY_PRESSED_CMD;

	static const std::string DPAD_0_UP;
	static const std::string DPAD_1_DOWN;
	static const std::string DPAD_2_LEFT;
	static const std::string DPAD_3_RIGHT;

	static const std::size_t DPAD_KEY_UP;
	static const std::size_t DPAD_KEY_DOWN;
	static const std::size_t DPAD_KEY_LEFT;
	static const std::size_t DPAD_KEY_RIGHT;

	void UpdateKeys(const std::string& str);
	void UpdateKey(const std::string& str, const std::string& keyName, const GS_KEY key);

	void UpdateJoysticks();
	std::string AssembleJoystickSharedDataPath(const std::size_t j, const std::string& parameter);
	std::string AssembleJoystickAxisValueSharedDataPath(const std::size_t j, const std::string& axis);

public:
	AndroidInput(const unsigned int maxTouchCount, const std::string *input);

	str_type::string PullCommands();

	bool IsKeyDown(const GS_KEY key) const;
	GS_KEY_STATE GetKeyState(const GS_KEY key) const;

	bool Update();

	math::Vector3 GetAccelerometerData() const;

	unsigned int GetMaxJoysticks() const;
	void ShowJoystickWarnings(const bool enable);
	bool IsShowingJoystickWarnings() const;
	GS_KEY_STATE GetJoystickButtonState(const unsigned int id, const GS_JOYSTICK_BUTTON key) const;
	bool IsJoystickButtonDown(const unsigned int id, const GS_JOYSTICK_BUTTON key) const;
	bool DetectJoysticks();
	GS_JOYSTICK_STATUS GetJoystickStatus(const unsigned int id) const;
	unsigned int GetNumJoyButtons(const unsigned int id) const;
	math::Vector2 GetJoystickXY(const unsigned int id) const;
	float GetJoystickZ(const unsigned int id) const;
	float GetJoystickRudder(const unsigned int id) const;
	math::Vector2 GetJoystickUV(const unsigned int id) const;
	GS_JOYSTICK_BUTTON GetFirstButtonDown(const unsigned int id) const;
	unsigned int GetNumJoysticks() const;
};

typedef boost::shared_ptr<AndroidInput> AndroidInputPtr;

} // namespace gs2d

#endif
