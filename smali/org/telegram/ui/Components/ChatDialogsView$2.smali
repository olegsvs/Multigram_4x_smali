.class Lorg/telegram/ui/Components/ChatDialogsView$2;
.super Ljava/lang/Object;
.source "ChatDialogsView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatDialogsView;->updateOnlineCount()V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatDialogsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 197
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$2;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 11
    .param p1, "lhs"    # Ljava/lang/Integer;
    .param p2, "rhs"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const v10, 0xc350

    .line 200
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView$2;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatDialogsView;->access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 201
    .local v2, "user1":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView$2;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatDialogsView;->access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 202
    .local v3, "user2":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    .line 203
    .local v0, "status1":I
    const/4 v1, 0x0

    .line 204
    .local v1, "status2":I
    if-eqz v2, :cond_0

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_0

    .line 205
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v4, v8, :cond_2

    .line 206
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    add-int v0, v4, v10

    .line 211
    :goto_0
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatDialogsView$2;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatDialogsView;->access$700(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v8

    if-ne v4, v8, :cond_0

    .line 212
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    add-int/2addr v4, v10

    add-int/lit8 v0, v4, -0x64

    .line 215
    :cond_0
    if-eqz v3, :cond_1

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_1

    .line 216
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v4, v8, :cond_3

    .line 217
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    add-int v1, v4, v10

    .line 222
    :goto_1
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatDialogsView$2;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatDialogsView;->access$700(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v8

    if-ne v4, v8, :cond_1

    .line 223
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    add-int/2addr v4, v10

    add-int/lit8 v1, v4, -0x64

    .line 226
    :cond_1
    if-lez v0, :cond_6

    if-lez v1, :cond_6

    .line 227
    if-le v0, v1, :cond_4

    move v4, v5

    .line 245
    :goto_2
    return v4

    .line 208
    :cond_2
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_0

    .line 219
    :cond_3
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_1

    .line 229
    :cond_4
    if-ge v0, v1, :cond_5

    move v4, v6

    .line 230
    goto :goto_2

    :cond_5
    move v4, v7

    .line 232
    goto :goto_2

    .line 233
    :cond_6
    if-gez v0, :cond_9

    if-gez v1, :cond_9

    .line 234
    if-le v0, v1, :cond_7

    move v4, v5

    .line 235
    goto :goto_2

    .line 236
    :cond_7
    if-ge v0, v1, :cond_8

    move v4, v6

    .line 237
    goto :goto_2

    :cond_8
    move v4, v7

    .line 239
    goto :goto_2

    .line 240
    :cond_9
    if-gez v0, :cond_a

    if-gtz v1, :cond_b

    :cond_a
    if-nez v0, :cond_c

    if-eqz v1, :cond_c

    :cond_b
    move v4, v6

    .line 241
    goto :goto_2

    .line 242
    :cond_c
    if-gez v1, :cond_d

    if-gtz v0, :cond_e

    :cond_d
    if-nez v1, :cond_f

    if-eqz v0, :cond_f

    :cond_e
    move v4, v5

    .line 243
    goto :goto_2

    :cond_f
    move v4, v7

    .line 245
    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 197
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/ChatDialogsView$2;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
