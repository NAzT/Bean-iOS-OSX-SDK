# LightBlue Bean SDK for iOS & OSX

Punch Through Design's SDK for speeding up development with the LightBlue Bean development platform. Build iOS and OS X apps that talk to your Beans. To download the library, see the <b>How to Clone and Pull</b> steps below. Otherwise, for step by step instructions, take a look at the <b>Getting Started</b> steps below and check out our [Reference Docs](http://punchthrough.com/files/bean/sdk-docs/index.html). 

# How to Clone and Pull from this repo

## Clone
		git clone REPO_URL --recursive

## Initialize Submodules 
####(This is unnecessary if the recursive clone works)
		git submodule update --init --recursive

## Pull
		git pull
		git submodule update --recursive

# Getting Started

Step by step instructions on integrating the Bean Library.

## Step 1: Create Workspace

Create new workspace in XCode by selecting File->New->Workspace. When creating, make sure create new folder is created.

![](https://dl.dropboxusercontent.com/u/45836281/BeanFolder3.png)

## Step 2: Clone REPO

In the terminal, cd into that new folder and git clone REPO_URL --recursive. In my case, it would be

	cd ~/Desktop/BeanWorkspace/
	git clone https://github.com/PunchThrough/Bean-iOS-OSX-SDK.git  --recursive

## Step 3: Add Bean Library to workspace

In XCode, right click your project navigator select add files to workspace as show in in the image. Add the Bean Library project which for my example is in ~/Desktop/BeanWorkspace/Bean-iOS-OSX-SDK/Bean OSX Static Library select Bean OSX Library.xcodeproj

![](https://dl.dropboxusercontent.com/u/45836281/rightclicknav.png)

## Step 4: Add your new project

In XCode, right click your project navigator select and select new project. This will be the project which uses the Bean Library. I named mine Test. At this point, your project should have a folder structure that is similar to the following.

![](https://dl.dropboxusercontent.com/u/45836281/folders.png)

## Step 5 : Link Binary

With your new project, go to Build Phases->Link Binary with Libraries. Press + and select libBean iOS Library.a for iOS or libBean OSX Library.a for OSX (the library text may show as red, don't worry, it'll still work)

## Step 6 : Add Header Search Paths

Click 'Build Settings' double click Header Search Paths and add the path $(SRCROOT)/../Bean-iOS-OSX-SDK/source/Public. Keep in mind, your projects need to use the paths as in the image above for your new project to find the Bean Library.

## Step 7 : Testing

Change your target to your newly created project target and compile. For a final step, add #import <PTDBeanManager.h> to one of the files in your new project and compile. 

# Attribution

If you use our SDK to build something cool, we'd appreciate it if you did the following:

 * Link to the Bean page ([http://punchthrough.com/bean/](http://punchthrough.com/bean/)). This could be your README.md file, your website's footer, your app's About page, or anywhere you think your users will see it. We appreciate these links because they help people discover the LightBlue Bean, and we want to everyone building something cool with the Bean.
 * Let us know what you've built! Our favorite part at Punch Through is when people tell us about projects they're building and what they've accomplished with our products. You could post on [Beantalk, our community forum](http://beantalk.punchthrough.com/), mention us on [Twitter @PunchThrough](http://twitter.com/punchthrough), or email us at [info@punchthrough.com](mailto:info@punchthrough.com).
 
# Licensing

This SDK is covered under **The MIT License**. See `LICENSE.txt` for more details.

