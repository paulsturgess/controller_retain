class TestController < UIViewController

  attr_accessor :foo

  def init(foo)
    super()
    self.foo = foo
    self
  end

  def didReceiveMemoryWarning
    NSLog("!!!!!!!!! applicationDidReceiveMemoryWarningNotification inside %@ !!!!!!!!!", self.class.name)
  end

  def viewDidLoad
    super
    self.title = "Foo Controller"
    self.view.addSubview(push_controller_button)
  end

  def push_controller_button
    @push_controller_button ||= UIButton.alloc.initWithFrame(CGRectMake(60,100,200,50)).tap do |button|
      button.backgroundColor = UIColor.whiteColor
      button.setTitleColor(
        UIColor.blackColor,
        forState: UIControlStateNormal
      )
      button.setTitle(
        "Push new controller",
        forState: UIControlStateNormal
      )
      button.addTarget(
        self,
        action:"push_new_controller:",
        forControlEvents:UIControlEventTouchUpInside
      )
    end
  end

  def push_new_controller button
    self.navigationController.pushViewController(
      TestController.alloc.init("foo"),
      animated: true
    )
  end

  def dealloc
    NSLog "dealloc TestController"
    super
  end

end