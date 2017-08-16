.class Lorg/telegram/messenger/MessagesController$82$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$82;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$82;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$82;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$82;

    .prologue
    .line 4722
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$82$2;->this$1:Lorg/telegram/messenger/MessagesController$82;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$82$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4725
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$82$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$82$2;->this$1:Lorg/telegram/messenger/MessagesController$82;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$82;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$82$2;->this$1:Lorg/telegram/messenger/MessagesController$82;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$82;->val$request:Lorg/telegram/tgnet/TLObject;

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$82$2;->this$1:Lorg/telegram/messenger/MessagesController$82;

    iget-boolean v6, v6, Lorg/telegram/messenger/MessagesController$82;->val$isChannel:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$82$2;->this$1:Lorg/telegram/messenger/MessagesController$82;

    iget-boolean v6, v6, Lorg/telegram/messenger/MessagesController$82;->val$isMegagroup:Z

    if-nez v6, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 4726
    return-void

    :cond_0
    move v0, v1

    .line 4725
    goto :goto_0
.end method
