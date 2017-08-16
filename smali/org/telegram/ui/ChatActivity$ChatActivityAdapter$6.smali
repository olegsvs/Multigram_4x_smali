.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->createAvatarClickMenu(ILorg/telegram/tgnet/TLRPC$User;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

.field final synthetic val$actions:Ljava/util/ArrayList;

.field final synthetic val$channelParticipantFinal:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

.field final synthetic val$chatParticipantFinal:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

.field final synthetic val$fromId:I

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/tgnet/TLRPC$ChatParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 11643
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$actions:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iput p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$fromId:I

    iput-object p5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$chatParticipantFinal:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iput-object p6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$channelParticipantFinal:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 11646
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 11647
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    # invokes: Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->kickUser(Lorg/telegram/tgnet/TLRPC$User;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$21400(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 11723
    :goto_0
    return-void

    .line 11650
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 11651
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$fromId:I

    # invokes: Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->showUserMsgs(I)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$21500(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;I)V

    goto :goto_0

    .line 11652
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 11653
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$fromId:I

    # invokes: Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->showUserMedia(I)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$21600(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;I)V

    goto :goto_0

    .line 11671
    :cond_2
    new-instance v0, Lorg/telegram/ui/ChannelRightsEditActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$chatParticipantFinal:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chat_id:I
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$channelParticipantFinal:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$channelParticipantFinal:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ChannelRightsEditActivity;-><init>(IILorg/telegram/tgnet/TLRPC$TL_channelAdminRights;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;IZ)V

    .line 11672
    .local v0, "fragment":Lorg/telegram/ui/ChannelRightsEditActivity;
    new-instance v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;)V

    .line 11721
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0
.end method
