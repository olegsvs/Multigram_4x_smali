.class Lorg/telegram/ui/ChatActivity$68$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$68$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChatActivity$68$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$68$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ChatActivity$68$1;

    .prologue
    .line 4258
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$68$1$1;->this$2:Lorg/telegram/ui/ChatActivity$68$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 4261
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$68$1$1;->this$2:Lorg/telegram/ui/ChatActivity$68$1;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$68$1;->this$1:Lorg/telegram/ui/ChatActivity$68;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$68;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4262
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$68$1$1;->this$2:Lorg/telegram/ui/ChatActivity$68$1;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$68$1;->this$1:Lorg/telegram/ui/ChatActivity$68;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$68;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4264
    :cond_0
    return-void
.end method
