.class Lorg/telegram/ui/Components/ChatDialogsView$9;
.super Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;
.source "ChatDialogsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatDialogsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatDialogsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatDialogsView;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 390
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$9;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSwipeBottom()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$9;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1100(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$9;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1300(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$9;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->btnPressed()V

    .line 402
    :cond_0
    return-void
.end method

.method public onSwipeLeft()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$9;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1100(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$9;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1300(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$9;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->btnPressed()V

    .line 399
    :cond_0
    return-void
.end method

.method public onSwipeRight()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$9;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1100(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$9;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1300(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$9;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->btnPressed()V

    .line 396
    :cond_0
    return-void
.end method

.method public onSwipeTop()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$9;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1100(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$9;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1300(Lorg/telegram/ui/Components/ChatDialogsView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$9;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->btnPressed()V

    .line 393
    :cond_0
    return-void
.end method
