source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '10.0'

# 使用framework
use_frameworks!

# 忽略警告
inhibit_all_warnings!

# 三方库
def thirdPods
  
end

# 基础层
def basePods
  # 常用的宏定义
  # pod 'LQGMacro', :path => '../../Base/LQGMacro'
  # 系统类的方法扩展
  # pod 'LQGCategory', :path => '../../Base/LQGCategory'
  # 基础代理
  # pod 'LQGBaseAppDelegate', :path => '../../Base/LQGBaseAppDelegate'
  pod 'LQGBaseAppDelegate'
  # 基类视图
  # pod 'LQGBaseView', :path => '../../Base/LQGBaseView'
  # 基础业务
  # pod 'LQGBaseViewModel', :path => '../../Base/LQGBaseViewModel'
  # 基类模型
  # pod 'LQGBaseModel', :path => '../../Base/LQGBaseModel'
end

# 工具层
def toolPods
  # 中文打印
  # pod 'LQGUnicode', :path => '../../Tool/LQGUnicode'
  pod 'LQGUnicode'
  # 中间件
  # pod 'LQGCTMediator', :path => '../../Tool/LQGCTMediator'
  # 提示
  # pod 'LQGTip', :path => '../../Tool/LQGTip'
  # 隐私
  # pod 'LQGPrivacy', :path => '../../Tool/LQGPrivacy'
  # 本地工具
  # pod 'LQGLocalTool', :path => '../../Tool/LQGLocalTool'
  pod 'LQGLocalTool'
  # 网络管理
  # pod 'LQGNetworkManager', :path => '../../Tool/LQGNetworkManager'
end

# 业务层
def businessPods
  # 业务工具层
  # 请求管理
  # pod 'LQGRequestManager', :path => '../../Business/LQGRequestManager'
  pod 'LQGRequestManager', :git => 'https://github.com/LuoJianGitHub/LQGRequestManager.git', :tag => '1.0.0'
  # 用户管理
  # pod 'LQGUser', :path => '../../Business/LQGUser'
  pod 'LQGUser', :git => 'https://github.com/LuoJianGitHub/LQGUser.git', :tag => '1.0.0'
  # 主题
  # pod 'LQGUIStyle', :path => '../../Business/LQGUIStyle'
  pod 'LQGUIStyle', :git => 'https://github.com/LuoJianGitHub/LQGUIStyle.git', :tag => '1.0.0'
  # 路由缺失
  # pod 'LQGNoTargetAction', :path => '../../Business/LQGNoTargetAction'
  # pod 'LQGNoTargetAction_Category', :path => '../../Business/LQGNoTargetAction_Category'
  pod 'LQGNoTargetAction', :git => 'https://github.com/LuoJianGitHub/LQGNoTargetAction.git', :tag => '1.0.0'
  pod 'LQGNoTargetAction_Category', :git => 'https://github.com/LuoJianGitHub/LQGNoTargetAction_Category.git', :tag => '1.0.0'
  
  # 业务模块层
  # 引导
  # pod 'LQGGuide', :path => '../../Business/LQGGuide'
  # pod 'LQGGuide_Category', :path => '../../Business/LQGGuide_Category'
  pod 'LQGGuide', :git => 'https://github.com/LuoJianGitHub/LQGGuide.git', :tag => '1.0.0'
  pod 'LQGGuide_Category', :git => 'https://github.com/LuoJianGitHub/LQGGuide_Category.git', :tag => '1.0.0'
  # 广告
  # pod 'LQGAdvert', :path => '../../Business/LQGAdvert'
  # pod 'LQGAdvert_Category', :path => '../../Business/LQGAdvert_Category'
  pod 'LQGAdvert', :git => 'https://github.com/LuoJianGitHub/LQGAdvert.git', :tag => '1.0.0'
  pod 'LQGAdvert_Category', :git => 'https://github.com/LuoJianGitHub/LQGAdvert_Category.git', :tag => '1.0.0'
  # 签名
  # pod 'LQGSign', :path => '../../Business/LQGSign'
  # pod 'LQGSign_Category', :path => '../../Business/LQGSign_Category'
  pod 'LQGSign', :git => 'https://github.com/LuoJianGitHub/LQGSign.git', :tag => '1.0.0'
  pod 'LQGSign_Category', :git => 'https://github.com/LuoJianGitHub/LQGSign_Category.git', :tag => '1.0.0'
  # 主界面
  # pod 'LQGMain', :path => '../../Business/LQGMain'
  # pod 'LQGMain_Category', :path => '../../Business/LQGMain_Category'
  pod 'LQGMain', :git => 'https://github.com/LuoJianGitHub/LQGMain.git', :tag => '1.0.0'
  pod 'LQGMain_Category', :git => 'https://github.com/LuoJianGitHub/LQGMain_Category.git', :tag => '1.0.0'
  # 测试
  # pod 'LQGTest', :path => '../../Business/LQGTest'
  # pod 'LQGTest_Category', :path => '../../Business/LQGTest_Category'
  pod 'LQGTest', :git => 'https://github.com/LuoJianGitHub/LQGTest.git', :tag => '1.0.0'
  pod 'LQGTest_Category', :git => 'https://github.com/LuoJianGitHub/LQGTest_Category.git', :tag => '1.0.0'
  # 用户中心
  # pod 'LQGUserCenter', :path => '../../Business/LQGUserCenter'
  # pod 'LQGUserCenter_Category', :path => '../../Business/LQGUserCenter_Category'
  pod 'LQGUserCenter', :git => 'https://github.com/LuoJianGitHub/LQGUserCenter.git', :tag => '1.0.0'
  pod 'LQGUserCenter_Category', :git => 'https://github.com/LuoJianGitHub/LQGUserCenter_Category.git', :tag => '1.0.0'
end

# flutter组件库
def flutterPods
#  flutter_application_path = './Modules/flutter_module/'
#  load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')
#  install_all_flutter_pods(flutter_application_path)
end

targets = ['LQGShellD', 'LQGShellT', 'LQGShellP', 'LQGShellR']

targets.each do |t|
  target t do
    thirdPods
    basePods
    toolPods
    businessPods
    flutterPods
  end
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      # do your self something
    end
  end
end
