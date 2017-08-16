.class Lorg/telegram/ui/Adapters/DialogsAdapter$1;
.super Ljava/lang/Object;
.source "DialogsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsAdapter;->sortUsersByStatusPinnedOnTop()V
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
    .line 246
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 246
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter$1;->compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I
    .locals 11
    .param p1, "dialog1"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .param p2, "dialog2"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .prologue
    const v10, 0xc350

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 249
    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v7, :cond_1

    iget-boolean v7, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v7, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v4

    .line 251
    :cond_1
    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v7, :cond_2

    move v4, v5

    .line 252
    goto :goto_0

    .line 253
    :cond_2
    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v7, :cond_4

    .line 254
    iget v7, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iget v8, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-lt v7, v8, :cond_0

    .line 256
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iget v7, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-le v4, v7, :cond_3

    move v4, v5

    .line 257
    goto :goto_0

    :cond_3
    move v4, v6

    .line 259
    goto :goto_0

    .line 262
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 263
    .local v2, "user1":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 264
    .local v3, "user2":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    .line 265
    .local v0, "status1":I
    const/4 v1, 0x0

    .line 266
    .local v1, "status2":I
    if-eqz v2, :cond_5

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v7, :cond_5

    .line 267
    iget v7, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 268
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    add-int v0, v7, v10

    .line 273
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v7, :cond_6

    .line 274
    iget v7, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v7, v8, :cond_8

    .line 275
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    add-int v1, v7, v10

    .line 280
    :cond_6
    :goto_2
    if-lez v0, :cond_a

    if-lez v1, :cond_a

    .line 281
    if-gt v0, v1, :cond_0

    .line 283
    if-ge v0, v1, :cond_9

    move v4, v5

    .line 284
    goto :goto_0

    .line 270
    :cond_7
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v0, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_1

    .line 277
    :cond_8
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_2

    :cond_9
    move v4, v6

    .line 286
    goto/16 :goto_0

    .line 287
    :cond_a
    if-gez v0, :cond_c

    if-gez v1, :cond_c

    .line 288
    if-gt v0, v1, :cond_0

    .line 290
    if-ge v0, v1, :cond_b

    move v4, v5

    .line 291
    goto/16 :goto_0

    :cond_b
    move v4, v6

    .line 293
    goto/16 :goto_0

    .line 294
    :cond_c
    if-gez v0, :cond_d

    if-gtz v1, :cond_e

    :cond_d
    if-nez v0, :cond_f

    if-eqz v1, :cond_f

    :cond_e
    move v4, v5

    .line 295
    goto/16 :goto_0

    .line 296
    :cond_f
    if-gez v1, :cond_10

    if-gtz v0, :cond_0

    :cond_10
    if-nez v1, :cond_11

    if-nez v0, :cond_0

    :cond_11
    move v4, v6

    .line 299
    goto/16 :goto_0
.end method
