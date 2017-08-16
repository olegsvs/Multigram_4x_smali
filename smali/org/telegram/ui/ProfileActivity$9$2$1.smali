.class Lorg/telegram/ui/ProfileActivity$9$2$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$9$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ProfileActivity$9$2;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$9$2;I)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ProfileActivity$9$2;

    .prologue
    .line 1170
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iput p2, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetRights(ILorg/telegram/tgnet/TLRPC$TL_channelAdminRights;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;)V
    .locals 7
    .param p1, "rights"    # I
    .param p2, "rightsAdmin"    # Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    .param p3, "rightsBanned"    # Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .prologue
    const/4 v6, 0x1

    .line 1173
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->val$actions:Ljava/util/ArrayList;

    iget v5, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->val$i:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2

    .line 1174
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v2, v4, Lorg/telegram/ui/ProfileActivity$9$2;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    .line 1175
    .local v2, "channelParticipant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    if-ne p1, v6, :cond_1

    .line 1176
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1180
    :goto_0
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    .line 1181
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v5, v5, Lorg/telegram/ui/ProfileActivity$9$2;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    .line 1182
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v5, v5, Lorg/telegram/ui/ProfileActivity$9$2;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 1183
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iput-object p3, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .line 1184
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iput-object p2, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    .line 1218
    .end local v2    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    :cond_0
    :goto_1
    return-void

    .line 1178
    .restart local v2    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    :cond_1
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    goto :goto_0

    .line 1185
    .end local v2    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->val$actions:Ljava/util/ArrayList;

    iget v5, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->val$i:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1186
    if-nez p1, :cond_0

    .line 1187
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v4, :cond_0

    .line 1188
    const/4 v1, 0x0

    .line 1189
    .local v1, "changed":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1190
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1191
    .local v3, "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v5, v5, Lorg/telegram/ui/ProfileActivity$9$2;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    if-ne v4, v5, :cond_6

    .line 1192
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1193
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    .line 1195
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1196
    const/4 v1, 0x1

    .line 1200
    .end local v3    # "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v4, :cond_5

    .line 1201
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 1202
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1203
    .local v3, "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v5, v5, Lorg/telegram/ui/ProfileActivity$9$2;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    if-ne v4, v5, :cond_7

    .line 1204
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1205
    const/4 v1, 0x1

    .line 1210
    .end local v3    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_5
    if-eqz v1, :cond_0

    .line 1211
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # invokes: Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$4500(Lorg/telegram/ui/ProfileActivity;)V

    .line 1212
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # invokes: Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$4600(Lorg/telegram/ui/ProfileActivity;)V

    .line 1213
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$2300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 1189
    .local v3, "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1201
    .local v3, "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
