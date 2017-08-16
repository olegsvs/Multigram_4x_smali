.class Lorg/telegram/messenger/voip/VoIPService$19;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService;->onConnectionStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 1342
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$19;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1345
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$19;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;
    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPService;->access$2700(Lorg/telegram/messenger/voip/VoIPService;)Lorg/telegram/messenger/voip/VoIPController;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1354
    :goto_0
    return-void

    .line 1347
    :cond_0
    const/4 v0, 0x1

    .line 1348
    .local v0, "netType":I
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$19;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPService;->access$3100(Lorg/telegram/messenger/voip/VoIPService;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1349
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$19;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPService;->access$3100(Lorg/telegram/messenger/voip/VoIPService;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 1350
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$19;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPService;->access$3100(Lorg/telegram/messenger/voip/VoIPService;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    .line 1352
    :cond_1
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/StatsController;->incrementTotalCallsTime(II)V

    .line 1353
    const-wide/16 v2, 0x1388

    invoke-static {p0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1350
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
