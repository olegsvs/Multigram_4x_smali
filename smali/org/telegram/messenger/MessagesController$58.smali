.class Lorg/telegram/messenger/MessagesController$58;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->migrateDialogs(IIIIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 3190
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$58;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 3193
    if-nez p2, :cond_0

    move-object v0, p1

    .line 3194
    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    .line 3195
    .local v0, "dialogsRes":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$58$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/MessagesController$58$1;-><init>(Lorg/telegram/messenger/MessagesController$58;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3355
    .end local v0    # "dialogsRes":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    :goto_0
    return-void

    .line 3348
    :cond_0
    new-instance v1, Lorg/telegram/messenger/MessagesController$58$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$58$2;-><init>(Lorg/telegram/messenger/MessagesController$58;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method