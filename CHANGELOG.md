# Changelog

## 0.1.0-alpha.7 (2026-06-30)

Full Changelog: [v0.1.0-alpha.6...v0.1.0-alpha.7](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/compare/v0.1.0-alpha.6...v0.1.0-alpha.7)

### Features

* expose response headers for both streams and errors ([9a737e5](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/9a737e5656e600a15c751d1a282a63b4c333aff6))


### Bug Fixes

* always send `filename=...` for multipart requests where a file is expected ([4e4ba21](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/4e4ba218b51241be02db6105f776cf8d3ee5435b))
* bump sorbet version and fix new type errors from the breaking change ([99dc5e1](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/99dc5e1787d479220371d4e4af3104dd023d4356))
* **client:** send content-type header for requests with an omitted optional body ([c0a318a](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/c0a318adfa4e59576d09141c694e0b0797ad48a6))
* coroutine leaks from connection pool ([17a55aa](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/17a55aada322d71bc7f71a5c48ed8fead2f9ebe1))
* shorten multipart boundary sep to less than RFC specificed max length ([a744e51](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/a744e51287374377ad3bcfa16812390db4051735))
* should not reuse buffers for `IO.copy_stream` interop ([844d705](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/844d7058c704eacef4f58005affb0fd183519b26))


### Performance Improvements

* faster code formatting ([10ac2c7](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/10ac2c7a79278050b519e39a6affb56795995839))


### Chores

* add json schema comment for rubocop.yml ([6ac7d58](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/6ac7d58c4485aac02213385766e79d14743e6186))
* allow fast-format to use bsd sed as well ([0ed2959](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/0ed2959a00ae20269be464ad2e395183353830b0))
* **ci:** skip uploading artifacts on stainless-internal branches ([4b55efa](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/4b55efaa0a403b9ab3dabbb91215e701774b2c48))
* collect metadata from type DSL ([971a634](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/971a63474dc67905f5366bc09cbce2d7862818eb))
* do not install brew dependencies in ./scripts/bootstrap by default ([002a520](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/002a520c801f5068622a5f10a359e7e3c1db8d58))
* **internal:** codegen related update ([54574f8](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/54574f8235ee4222de4eacd8d55c5f98707d1c8a))
* **internal:** codegen related update ([7a76ab8](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/7a76ab8d2f9e3fc1b310a2ddeba6971e96b409b1))
* **internal:** codegen related update ([d42fb9e](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/d42fb9e7e00fd8f5e23c050f7ca55590a69f1fbf))
* **internal:** codegen related update ([58a4ec2](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/58a4ec2720fc2b1522b2539c4cf82bef85662c3c))
* **internal:** codegen related update ([89cc96d](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/89cc96dd5f36241bfe36b531420e0d2ba7b78f84))
* **internal:** codegen related update ([5cb2740](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/5cb2740b639712d49b84a066890b8169aec4d5b9))
* **internal:** codegen related update ([1d192fc](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/1d192fce2b3cd0f749f2905639fa3ec8d264b347))
* **internal:** codegen related update ([8d2c19c](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/8d2c19c97867861f0d6786275d3d7103fb67e029))
* **internal:** codegen related update ([c28df70](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/c28df70019c13908b5c8c850e630efe3e4552e7c))
* **internal:** codegen related update ([2dac090](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/2dac0908556f46766d8d7e53e967a130a6bbf652))
* **internal:** codegen related update ([0369254](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/03692544195e114322e5db244c20c5a6be5f0324))
* **internal:** codegen related update ([701c59e](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/701c59e988a74d788da2573e2991d9529489fd55))
* **internal:** codegen related update ([c910654](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/c910654bbf93bef402afbc01f4836a7d4c423418))
* **internal:** codegen related update ([d3ae758](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/d3ae7581573a214bff99df73ca8c9d50939a0473))
* **internal:** codegen related update ([15a8ba5](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/15a8ba54a2fb7e1278d1b729d5836e4f0e707ec2))
* **internal:** codegen related update ([216d2b9](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/216d2b9754ac41c50aef7e5a7ff505b96b510f22))
* **internal:** codegen related update ([508b295](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/508b295869621a20f9a767561e01e56e759a803a))
* **internal:** codegen related update ([d00c003](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/d00c003c95c69581fd6946c562caf53cd498fa03))
* **internal:** codegen related update ([fa5bb2f](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/fa5bb2ff8fe27848dd36e0009fce74a0bb466b99))
* **internal:** codegen related update ([42d29a6](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/42d29a628b288333ea59833af8b7865851608167))
* **internal:** codegen related update ([c4f6b82](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/c4f6b825d763d758309b9349e3a19898d8eccb18))
* **internal:** codegen related update ([c91bfb8](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/c91bfb832832fb55e5d50568c4b7059aadc782c7))
* **internal:** codegen related update ([143aed1](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/143aed123f0d9eb0079d00948a0c272705afeffd))
* **internal:** codegen related update ([89f89fd](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/89f89fd82ae39094787fc2044459cb023e1db98f))
* **internal:** codegen related update ([01da330](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/01da330d46c03cf65ff3ecc075a5b800a310a936))
* **internal:** codegen related update ([aecbee1](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/aecbee1865a3ff811386a19d722280338caacba3))
* **internal:** codegen related update ([1630b53](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/1630b530b00a1a305a515927db67a0f1e7e80316))
* **internal:** codegen related update ([9296983](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/9296983fb0f1e64e0a6d89816ea5d2bea0d8e952))
* **internal:** codegen related update ([3b0f465](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/3b0f465cef6c2536fa0b99bae4915273c9fd2993))
* **internal:** codegen related update ([0c96ce6](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/0c96ce61e687b25f0fe282636b90cae406a33356))
* **internal:** codegen related update ([37114fb](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/37114fb11fb22b190ba6dc0512a2b8d41118c5bc))
* **internal:** codegen related update ([5818d44](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/5818d442d4e6af4234e3af10f5262cbe8967dc80))
* **internal:** codegen related update ([452f180](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/452f1805f0092cb371a5a65ae31d9ff857b78939))
* **internal:** codegen related update ([ee3f868](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/ee3f8683376d9846d3e7b715a49484054b904edc))
* **internal:** codegen related update ([f135039](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/f135039711f92ee652b8fa4ec465818189e2bf99))
* **internal:** update comment in script ([37fb1ed](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/37fb1ed7a9b56d194f39519390c30accc201a99a))
* update @stainless-api/prism-cli to v5.15.0 ([f5c8070](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/f5c80704ce6b3b7a07cc114d14d9f5b520d9dfe4))

## 0.1.0-alpha.6 (2025-08-06)

Full Changelog: [v0.1.0-alpha.5...v0.1.0-alpha.6](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/compare/v0.1.0-alpha.5...v0.1.0-alpha.6)

### Chores

* **api:** dedupe location types ([3c8eebd](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/3c8eebdbcd82ec1a65feba70b870239693852364))

## 0.1.0-alpha.5 (2025-08-01)

Full Changelog: [v0.1.0-alpha.4...v0.1.0-alpha.5](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/compare/v0.1.0-alpha.4...v0.1.0-alpha.5)

### Features

* **api:** manual updates ([00200c4](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/00200c44462ccfa224ea09c654136dbb57a008de))


### Bug Fixes

* List&lt;List&gt; problem in java by naming dto.Event ([809a0a1](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/809a0a1feda028b874e0b1220f33bb4593688aa2))


### Chores

* **internal:** increase visibility of internal helper method ([e238599](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/e23859972996f44b782c91856e9b3d6576310838))

## 0.1.0-alpha.4 (2025-07-30)

Full Changelog: [v0.1.0-alpha.3...v0.1.0-alpha.4](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/compare/v0.1.0-alpha.3...v0.1.0-alpha.4)

## 0.1.0-alpha.3 (2025-07-30)

Full Changelog: [v0.1.0-alpha.2...v0.1.0-alpha.3](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/compare/v0.1.0-alpha.2...v0.1.0-alpha.3)

### Features

* publish to ruby gem and align namings ([fbbe47b](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/fbbe47b9ed0748a180b5860006aa1876283d2809))

## 0.1.0-alpha.2 (2025-07-30)

Full Changelog: [v0.1.0-alpha.1...v0.1.0-alpha.2](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/compare/v0.1.0-alpha.1...v0.1.0-alpha.2)

### Features

* **api:** manual updates ([f4fa783](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/f4fa783d78f05d19c8f4fb775d1d544b3041b788))

## 0.1.0-alpha.1 (2025-07-30)

Full Changelog: [v0.0.1-alpha.0...v0.1.0-alpha.1](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/compare/v0.0.1-alpha.0...v0.1.0-alpha.1)

### Features

* **api:** update via SDK Studio ([b352d7a](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/b352d7a808092cc076a51d0002b86a9f11e81db0))
* **api:** update via SDK Studio ([638f57b](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/638f57bc812ef59128727e197de66dba3f2e85fe))
* **api:** update via SDK Studio ([7a4eae1](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/7a4eae18e57537fc7bb857c31ee9c9d77969e3f0))
* Fix for ruby ([67228ca](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/67228ca9daab6177365254060268bbead0d3c1ae))
* re-order endpoints ([82c7fe3](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/82c7fe3742f5424a5a7b1bd276217b842f0dcf7d))


### Bug Fixes

* **internal:** ensure sorbet test always runs serially ([0d7090a](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/0d7090a1efe112429f98c8cd3ce69c335e742694))


### Chores

* configure new SDK language ([825bd79](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/825bd794411f02660a74c502381e0be8620e168c))
* update SDK settings ([4d4489c](https://github.com/nextbillion-ai/nextbillion-sdk-ruby/commit/4d4489ccc7d02faab3c7a4863e4e61c1258e6744))
