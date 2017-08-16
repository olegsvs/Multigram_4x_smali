.class Lorg/telegram/ui/ChatActivity$72;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->hideFloatingDateView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 4432
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$72;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 4435
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$72;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4436
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$72;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$8802(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 4438
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$72;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatDialogsView:Lorg/telegram/ui/Components/ChatDialogsView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatDialogsView;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    if-eqz v0, :cond_1

    .line 4439
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$72;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatDialogsView:Lorg/telegram/ui/Components/ChatDialogsView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatDialogsView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatDialogsView;->setAlpha(F)V

    .line 4441
    :cond_1
    return-void
.end method
