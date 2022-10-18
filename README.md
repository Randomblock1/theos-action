# theos-action

_Use Theos in your GitHub Actions to build iOS tweaks, even without owning a Mac._

## Wait, what's Theos?

[Theos](https://github.com/theos/theos) is a cross-platform building suite for iOS and MacOS. It's mainly used for developing and compiling jailbroken iOS tweaks for the iPhone/iPad.

## Changlog

- v1.1: Fixed SDK folder chache check. Better docs.

- v1: Initial release. Only MacOS support, and only supports 1 SDK repo (although you can just run it a few times or do it yourself). It works, but it is probably not very efficient.

## Usage

You must use a MacOS runner (for now). Linux support may be added later if there is enough demand.

```bash
- uses: Randomblock1/theos-action@v1
  with:
    # Defaults are filled in below.
    
    # This is where Theos is stored, relative to the runner workspace.
    theos-dir: 'theos'
    
    # This is where Theos will be git cloned from.
    theos-src: 'https://github.com/theos/theos'
    
    # This is where the Theos SDKs will be git cloned from.
    # Useful for compiling using newer frameworks that aren't in the official repo yet.
    theos-sdks: 'https://github.com/theos/sdks'
```

## Example

See [this workflow](https://github.com/Randomblock1/FleetsBGone/blob/master/.github/workflows/build.yml) as an example of how to use this. It configures a custom SDK repository, uses GitHub Actions cache to speed up downloads (Theos and the SDKs are rarely updated), builds a tweak, and packages it up using GitHub Artifacts.

That workflow should work out-of-the-box for most Theos projects. Some tweaking is required, but it's basically just copy-paste.

## Issues

Feel free to submit any issues or pull requests.

## License

This project is released under the [MIT License](LICENSE)
