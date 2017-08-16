.class Lorg/telegram/ui/Adapters/DialogsAdapter$2;
.super Ljava/lang/Object;
.source "DialogsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsAdapter;->sortUnreadPinedOnTop(Ljava/util/ArrayList;)V
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
    .line 361
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 361
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter$2;->compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I
    .locals 5
    .param p1, "dialog1"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .param p2, "dialog2"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 364
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v3, :cond_1

    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v3, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v0

    .line 366
    :cond_1
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v3, :cond_2

    move v0, v1

    .line 367
    goto :goto_0

    .line 368
    :cond_2
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v3, :cond_4

    .line 369
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iget v4, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-lt v3, v4, :cond_0

    .line 371
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-le v0, v3, :cond_3

    move v0, v1

    .line 372
    goto :goto_0

    :cond_3
    move v0, v2

    .line 374
    goto :goto_0

    .line 377
    :cond_4
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iget v4, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-ne v3, v4, :cond_5

    move v0, v2

    .line 378
    goto :goto_0

    .line 379
    :cond_5
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 382
    goto :goto_0
.end method
