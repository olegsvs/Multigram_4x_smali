.class Lorg/telegram/ui/ChangeAboutActivity$4$1;
.super Ljava/lang/Object;
.source "ChangeAboutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeAboutActivity$4;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChangeAboutActivity$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeAboutActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChangeAboutActivity$4;

    .prologue
    .line 180
    iput-object p1, p0, Lorg/telegram/ui/ChangeAboutActivity$4$1;->this$1:Lorg/telegram/ui/ChangeAboutActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 183
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 184
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 185
    return-void
.end method
