# theos-action

_Use Theos in your GitHub Actions to build iOS tweaks, even without owning a Mac._

## Wait, what's Theos?

[Theos](https://github.com/theos/theos) is a cross-platform building suite for iOS and MacOS. It's mainly used for developing and compiling jailbroken iOS tweaks for the iPhone/iPad.

## What's new

v1: Initial release. Only MacOS support, and only supports 1 SDK repo (although you can just run it a few times or do it yourself). It works, but it is probably not very efficient.

## Usage

MAKE SURE YOU'RE USING THIS WITH A MACOS RUNNER!!! Linux support may be added if there is enough demand, but for now only Mac is supported.

```
- uses: Randomblock1/theos-action@v1
  with:
    # This is where Theos is stored, relative to the runner workspace.
    # By default, it's just theos.
    theos-dir: ''
    # This is where Theos will be git cloned from. It must be a Git repository.
    # By default, it's https://github.com/theos/theos.
    theos-src: ''
    # This is where the Theos SDKs will be downloaded from. It must be a GitHub URL.
    # By default, it's https://github.com/theos/sdks.
    # However, you'll probably want to set this manually if you want to compile using newer frameworks, like iOS 13 or 14.
    theos-sdks: ''
```

## Example

See [this workflow](https://github.com/Randomblock1/FleetsBGone/blob/master/.github/workflows/build.yml) as an example of how to use this. It configures a custom SDK repository, uses GitHub Actions cache to speed up downloads (Theos and the SDKs are rarely updated), builds a tweak, and packages it up using GitHub Artifacts.

That workflow should work out-of-the-box for most Theos projects. Some tweaking may be required, but it's basically just copy-paste.

## Issues

Feel free to submit any issues or pull requests.

## License

This project is released under the [MIT License](LICENSE)
