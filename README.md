# theos-action

Build Theos projects (iOS tweaks) with GitHub Actions easily.

## Wait, what's Theos?

[Theos](https://github.com/theos/theos) is a cross-platform building suite for iOS and MacOS. It's mainly used for developing and compiling jailbroken iOS tweaks for the iPhone/iPad.

## Why?

Theos is a bit of a pain to set up. It requires a lot of dependencies, it takes a considerable amount of storage space, and it's not all that easy to get it working on a CI server. Additionally, this allows people to build their tweaks without having to install Xcode on their own machine, or even without a computer at all!

## Usage

You must use a MacOS or Linux runner. Windows is not supported, and probably never will be.

```bash
- uses: Randomblock1/theos-action@v1
  with:
    # All of these are optional. Defaults are filled in below.
    
    # This is where Theos is downloaded to.
    theos-dir: 'theos'
    
    # This is where Theos will be git cloned from.
    theos-src: 'https://github.com/theos/theos'
    
    # This is where the Theos SDKs will be downloaded from.
    # Useful for using frameworks that aren't in the official repo.
    theos-sdks: 'https://github.com/theos/sdks'

    # Which branch to clone from theos-sdks repo.
    theos-sdks-branch: 'master'

    # Whether to enable Orion, which adds support for tweaks coded in Swift
    orion: 'false'
```

## Example

See [this workflow](https://github.com/Randomblock1/FleetsBGone/blob/master/.github/workflows/build.yml) as an example of how to use this. It configures a custom SDK repository, uses GitHub Actions cache to speed up downloads (Theos and the SDKs are rarely updated), builds a tweak, and packages it up using GitHub Artifacts.

That workflow should work out-of-the-box for most Theos projects. Some tweaking is required, but it's basically just copy-paste.

## Issues

Feel free to submit any issues or pull requests.

## License

This project is released under the [MIT License](LICENSE).
