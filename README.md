# ToyRobot

This is an exercise in trying out typing systems for Ruby. The program is Toy Robot based off the [ebook with the same name](https://leanpub.com/toyrobot/).

## Type Checking

I first developed the repo to feature complete with RBS at every feature commit. Progress can be followed in the Git commit messages. When feature complete I then attempted to use Sorbet for type checking instead.

### Ruby 3 RBS

This repo was created using [RBS](https://github.com/ruby/rbs) on the `trunk` branch.

RBS is a language for describing Ruby types. It is included with Ruby 3.0. It still requires another program to use the described types for checks against the source code. RBS has no effect on Ruby at run time. For this repo I've used [`steep`](https://github.com/soutaro/steep) to do type checking.

RBS type signatures are included in the `sig` directory. Use `steep` to type check the repository: `steep check`.

`steep watch lib` can also be used to automatically check files as they are saved.

### Sorbet

After completing development with RBS I then made a new branch called `sorbet`. This branch has all of the RBS artefacts removed and attempts to use [Sorbet](https://sorbet.org) for type checking. I didn't get far and it remains in an unfinished state. The last error that halted me can be found in the last Git commit on the branch.

## License

This is open source software under the MIT license. Copyrights belong to [Sharesight](https://www.sharesight.com). See the LICENSE file for detail.
