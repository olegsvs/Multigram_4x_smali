.class Lorg/telegram/ui/PlusSettingsActivity$10$1;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity$10;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PlusSettingsActivity$10;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity$10;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PlusSettingsActivity$10;

    .prologue
    .line 1810
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$10$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1814
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1815
    return-void
.end method
