# Laptop

Configures Debian installation to be used on a laptop. 

## Notes

The playbook distinguishes between AMD/Intel systems, but does assume the following:
- User has non-free repository enabled and OK with installing binary firmware blobs.
- Laptop has some sort of Realtek audio codec.
- WiFi is provided by Intel chip irrespective of CPU vendor.

### S3/S4

Hibernation is disabled in kernel when system is booted in "lockdown" mode. This is the case when SecureBoot is enabled.

There is a patchset that might allow functional and secure hibernation in future: https://lore.kernel.org/lkml/20210220013255.1083202-1-matthewgarrett@google.com/T/#u

### i2c

To control external screens via DDC/CI, `ddcutil` is using i2c bus. You need to either add user to i2c group or `sudo` the call.

## Requirements

Ansible ≥2.9  
Debian 11 (might work on its derivatives, however this is not guaranteed)

## Role Variables

| Variable                  | Description                                            | Default    |
|---------------------------|--------------------------------------------------------|------------|
| alsa_out_card             | Default ALSA output card                               | 0          |
| alsa_out_device           | Default ALSA output device                             | 0          |
| alsa_setup                | Setup ALSA?                                            | false      |
| disable_nmi_watch         | Disables NMI watchdog. Don't do this on a server.      | true       |
| enable_sleep_suspend      | Enable S3/S4 modes?                                    | true       |
| i2c_load_dev              | Load `i2c-dev` module?                                 | false      |
| i2c_user_add              | Add login user to i2c group.                           | false      |
| intel_hda_options         | List of strings that are applied via modprobe.         | []         |
| logind_configure          | Apply idle-related settings in `/etc/logind.conf`.     | false      |
| logind_idle_action        | What to do when machine is idle.                       | "suspend"  |
| logind_idle_time          | Idle time in seconds.                                  | 600        |
| logind_lid_action         | What to do when lid is closed.                         | "suspend"  |
| logind_powerbutton_action | Action to execute when power button is pressed.        | "poweroff" |
| set_trackpoint_drift      | Sets trackpoint drift to a certain value               | 25         |
| vm_writeback              | Delay writes to disk by X ms. Debian's default is 500. | 1500       |

## Dependencies
It is *strongly* advised to install on a computer that is already provisioned with the [base](https://github.com/savchenko/debian/roles/base/README.md) role.

## License
MIT

## Author Information
Andrew Savchenko  
https://savchenko.net
