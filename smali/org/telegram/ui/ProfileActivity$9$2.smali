.class Lorg/telegram/ui/ProfileActivity$9$2;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$9;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$9;

.field final synthetic val$actions:Ljava/util/ArrayList;

.field final synthetic val$channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$9;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ProfileActivity$9;

    .prologue
    .line 1155
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$actions:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iput-object p4, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1158
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1159
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->selectedUser:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$3900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    # invokes: Lorg/telegram/ui/ProfileActivity;->kickUser(I)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ProfileActivity;->access$4400(Lorg/telegram/ui/ProfileActivity;I)V

    .line 1222
    :goto_0
    return-void

    .line 1162
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1163
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    # invokes: Lorg/telegram/ui/ProfileActivity;->showUserMsgs(I)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ProfileActivity;->access$4200(Lorg/telegram/ui/ProfileActivity;I)V

    goto :goto_0

    .line 1164
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1165
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    # invokes: Lorg/telegram/ui/ProfileActivity;->showUserMedia(I)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ProfileActivity;->access$4300(Lorg/telegram/ui/ProfileActivity;I)V

    goto :goto_0

    .line 1169
    :cond_2
    new-instance v0, Lorg/telegram/ui/ChannelRightsEditActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ChannelRightsEditActivity;-><init>(IILorg/telegram/tgnet/TLRPC$TL_channelAdminRights;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;IZ)V

    .line 1170
    .local v0, "fragment":Lorg/telegram/ui/ChannelRightsEditActivity;
    new-instance v1, Lorg/telegram/ui/ProfileActivity$9$2$1;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/ProfileActivity$9$2$1;-><init>(Lorg/telegram/ui/ProfileActivity$9$2;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;)V

    .line 1220
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0
.end method
