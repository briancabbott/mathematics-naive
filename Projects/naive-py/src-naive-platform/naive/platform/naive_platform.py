


import enum

#      machine       \ 
#      machine-user   \ >> Application
#                     /
#      user          / 

class DeviceIdentity():
    device_uuid
    device_type
    device_type_profile


class DeviceOSType(Enum):
    MACOS,
    LINUX,
    WINDOWS

    @staticmethod
    def get_current_device_os_type():
        pass

class DeviceFormFactorTypeNotFoundError(Error):
    pass

class DeviceFormFactorType(Enum):
    MOBILE_SMART_PHONE
    TABLET
    LAPTOP
    DESKTOP

    @staticmethod
    def get_current_device_form_factor_type():
        os_type = DeviceOSType.get_current_device_os_type()
        if os_type == DeviceOSType.MACOS:
            pass
        elif os_type == DeviceOSType.LINUX:
            pass
        elif os_type == DeviceOSType.WINDOWS:
            pass
        else:
            pass

class DeviceProfile():
    device_type: DeviceType
    profile_properties: dict


class MacDeviceIdentity():
    def get_device_profile():
        dp = DeviceProfile

class LinuxDeviceIdentity():
    get_device_profile()

class WindowsDeviceIdentity():
    get_device_profile()

class DeviceUserIdentity():
    pass

class NaivePlatformUserIdentity():
    username: str
    login_session_id: str

class ApplicationEnvironment():
    pass


class DeviceCommand():
    """ 
    A Specific command. With Expected output, that can parse all fields and all values with known responses - so that we have a known known response
    """

DeviceCommandOutput


DeviceCommandOutputParser