.class Lorg/telegram/ui/LaunchActivity$25;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->onPasscodePause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 2708
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$25;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2711
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$25;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$2900(Lorg/telegram/ui/LaunchActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 2712
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2713
    const-string/jumbo v0, "lock app"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2714
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$25;->this$0:Lorg/telegram/ui/LaunchActivity;

    # invokes: Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$3000(Lorg/telegram/ui/LaunchActivity;)V

    .line 2718
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$25;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/LaunchActivity;->access$2902(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2720
    :cond_0
    return-void

    .line 2716
    :cond_1
    const-string/jumbo v0, "didn\'t pass lock check"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
