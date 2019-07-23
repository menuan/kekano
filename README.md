
## MacOS

Install using brew with the following command:

```bash
brew cask install apenngrace/homebrew-vulkan/vulkan-sdk
```

Paste this in some shell file according to your setup while making sure you set the appropriate vulkan-sdk version in `VULKAN_SDK`:

```bash
export VULKAN_SDK=/usr/local/Caskroom/vulkan-sdk/1.1.108.0/macOS
export PATH=$VULKAN_SDK/bin:$PATH
export DYLD_LIBRARY_PATH=$VULKAN_SDK/lib:$DYLD_LIBRARY_PATH
export VK_ICD_FILENAMES=$VULKAN_SDK/etc/vulkan/icd.d/MoltenVK_icd.json
export VK_LAYER_PATH=$VULKAN_SDK/etc/vulkan/explicit_layer.d
```

[Installing VulkanSDK 1](https://lib.rs/crates/vulkano-shaders)
[Installing VulkanSDK 2](https://github.com/vulkano-rs/vulkano/blob/master/README.md)