# squeak-intellij-plugin
Plugin for Squeak that lets it talk to Intellij IDE. 
See [Intellij Squeak](https://github.com/Paulpanther/intellij-squeak)

### Installation
1. Install [Squot](https://github.com/hpi-swa/Squot) inside your Squeak Image
2. Clone this repo
3. Run `IntellijPluginCommServer new`
4. Save your image

Each time you close and open your image again, the server will restart automatically. 
To close the server run `IntellijPluginCommServer closeAll`
