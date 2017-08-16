.class Lorg/telegram/ui/ChatActivity$59;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->updateChatDialogsView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 3787
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$59;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3790
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatDialogsView:Lorg/telegram/ui/Components/ChatDialogsView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatDialogsView;

    move-result-object v1

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$59;->val$visible:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0200d3

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatDialogsView;->setBtnResId(I)V

    .line 3791
    return-void

    .line 3790
    :cond_0
    const v0, 0x7f020234

    goto :goto_0

    :cond_1
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0200d2

    goto :goto_0

    :cond_2
    const v0, 0x7f020238

    goto :goto_0
.end method
