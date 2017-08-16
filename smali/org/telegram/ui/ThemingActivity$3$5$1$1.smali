.class Lorg/telegram/ui/ThemingActivity$3$5$1$1;
.super Ljava/lang/Object;
.source "ThemingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingActivity$3$5$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/ThemingActivity$3$5$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingActivity$3$5$1;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/ui/ThemingActivity$3$5$1;

    .prologue
    .line 323
    iput-object p1, p0, Lorg/telegram/ui/ThemingActivity$3$5$1$1;->this$3:Lorg/telegram/ui/ThemingActivity$3$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$3$5$1$1;->this$3:Lorg/telegram/ui/ThemingActivity$3$5$1;

    iget-object v0, v0, Lorg/telegram/ui/ThemingActivity$3$5$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$5;

    iget-object v0, v0, Lorg/telegram/ui/ThemingActivity$3$5;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ThemingActivity$3$5$1$1;->this$3:Lorg/telegram/ui/ThemingActivity$3$5$1;

    iget-object v1, v1, Lorg/telegram/ui/ThemingActivity$3$5$1;->val$xmlFile:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/Utilities;->loadPrefFromSD(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$3$5$1$1;->this$3:Lorg/telegram/ui/ThemingActivity$3$5$1;

    iget-object v0, v0, Lorg/telegram/ui/ThemingActivity$3$5$1;->val$wName:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->applyWallpaper(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lorg/telegram/messenger/Utilities;->restartApp()V

    .line 331
    :cond_0
    return-void
.end method
