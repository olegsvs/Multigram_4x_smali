.class Lorg/telegram/ui/Adapters/DialogsAdapter$4;
.super Ljava/lang/Object;
.source "DialogsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsAdapter;->sortUnmutedPinedOnTop(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/DialogsAdapter;

    .prologue
    .line 431
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 431
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I
    .locals 6
    .param p1, "dialog1"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .param p2, "dialog2"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 434
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v3, :cond_1

    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v3, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v0

    .line 436
    :cond_1
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v3, :cond_2

    move v0, v1

    .line 437
    goto :goto_0

    .line 438
    :cond_2
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v3, :cond_4

    .line 439
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iget v4, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-lt v3, v4, :cond_0

    .line 441
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-le v0, v3, :cond_3

    move v0, v1

    .line 442
    goto :goto_0

    :cond_3
    move v0, v2

    .line 444
    goto :goto_0

    .line 447
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v2

    .line 448
    goto :goto_0

    .line 449
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    .line 454
    goto :goto_0
.end method
