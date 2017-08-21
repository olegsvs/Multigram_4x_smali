.class Lorg/telegram/ui/ProfileActivity$9;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 1056
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1059
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v13

    move/from16 v0, p2

    if-le v0, v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v13

    move/from16 v0, p2

    if-ge v0, v13, :cond_16

    .line 1060
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v13}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v13

    if-nez v13, :cond_0

    .line 1061
    const/4 v13, 0x0

    .line 1227
    :goto_0
    return v13

    .line 1063
    :cond_0
    const/4 v2, 0x0

    .line 1064
    .local v2, "allowKick":Z
    const/4 v3, 0x0

    .line 1065
    .local v3, "allowSetAdmin":Z
    const/4 v5, 0x0

    .line 1069
    .local v5, "canEditAdmin":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 1070
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v14, v13, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v15}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v15

    sub-int v15, p2, v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1074
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v14, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v13, v14}, Lorg/telegram/ui/ProfileActivity;->access$3902(Lorg/telegram/ui/ProfileActivity;I)I

    .line 1076
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget v14, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    .line 1077
    .local v12, "usr":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    .line 1078
    .local v9, "name":Ljava/lang/String;
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 1079
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n@"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1082
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v13

    if-eqz v13, :cond_d

    move-object v13, v11

    .line 1083
    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v6, v13, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1084
    .local v6, "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v14

    if-ne v13, v14, :cond_7

    .line 1125
    :cond_2
    :goto_2
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v13}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v4, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1127
    .local v4, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v4, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1129
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1130
    .local v8, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    .local v1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    iget-boolean v13, v13, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v13, :cond_13

    .line 1132
    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1133
    const-string/jumbo v13, "SetAsAdmin"

    const v14, 0x7f070667

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v13

    if-eqz v13, :cond_4

    if-eqz v5, :cond_4

    .line 1137
    const-string/jumbo v13, "KickFromSupergroup"

    const v14, 0x7f0703ad

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    const-string/jumbo v13, "KickFromGroup"

    const v14, 0x7f0703ac

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$4000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v13

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v13

    if-nez v13, :cond_5

    .line 1147
    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    const-string/jumbo v13, "ShowUserMessages"

    const v14, 0x7f07069a

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    const/4 v13, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    const-string/jumbo v13, "ShowUserMedia"

    const v14, 0x7f070699

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 1153
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1072
    .end local v1    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v6    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v8    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v12    # "usr":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v14

    sub-int v14, p2, v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    goto/16 :goto_1

    .line 1087
    .restart local v6    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v12    # "usr":Lorg/telegram/tgnet/TLRPC$User;
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget v14, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    .line 1088
    .local v10, "u":Lorg/telegram/tgnet/TLRPC$User;
    instance-of v13, v6, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    if-nez v13, :cond_8

    instance-of v13, v6, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;

    if-eqz v13, :cond_b

    :cond_8
    const/4 v3, 0x1

    .line 1089
    :goto_4
    instance-of v13, v6, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v13, :cond_9

    instance-of v13, v6, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v13, :cond_a

    :cond_9
    iget-boolean v13, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    if-eqz v13, :cond_c

    :cond_a
    const/4 v5, 0x1

    .line 1090
    :goto_5
    goto/16 :goto_2

    .line 1088
    :cond_b
    const/4 v3, 0x0

    goto :goto_4

    .line 1089
    :cond_c
    const/4 v5, 0x0

    goto :goto_5

    .line 1092
    .end local v6    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v10    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_d
    const/4 v6, 0x0

    .line 1093
    .restart local v6    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v14

    if-eq v13, v14, :cond_e

    .line 1094
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    iget-boolean v13, v13, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v13, :cond_10

    .line 1095
    const/4 v2, 0x1

    .line 1102
    :cond_e
    :goto_6
    if-nez v2, :cond_2

    .line 1104
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$4000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v13

    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v13

    if-nez v13, :cond_f

    .line 1105
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v13}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v4, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1107
    .restart local v4    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v4, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1108
    const/4 v13, 0x2

    new-array v7, v13, [Ljava/lang/CharSequence;

    const/4 v13, 0x0

    const-string/jumbo v14, "ShowUserMessages"

    const v15, 0x7f07069a

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v7, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "ShowUserMedia"

    const v15, 0x7f070699

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v7, v13

    .line 1109
    .local v7, "items":[Ljava/lang/CharSequence;
    new-instance v13, Lorg/telegram/ui/ProfileActivity$9$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Lorg/telegram/ui/ProfileActivity$9$1;-><init>(Lorg/telegram/ui/ProfileActivity$9;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)V

    invoke-virtual {v4, v7, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1119
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1121
    .end local v4    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v7    # "items":[Ljava/lang/CharSequence;
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1096
    :cond_10
    instance-of v13, v11, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-eqz v13, :cond_e

    .line 1097
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    iget-boolean v13, v13, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    iget-boolean v13, v13, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v13, :cond_12

    :cond_11
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v14

    if-ne v13, v14, :cond_e

    .line 1098
    :cond_12
    const/4 v2, 0x1

    goto :goto_6

    .line 1143
    .restart local v1    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .restart local v8    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v13

    if-lez v13, :cond_14

    const-string/jumbo v13, "KickFromGroup"

    const v14, 0x7f0703ac

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    :goto_7
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1143
    :cond_14
    const-string/jumbo v13, "KickFromBroadcast"

    const v14, 0x7f0703ab

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    .line 1155
    :cond_15
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/CharSequence;

    new-instance v14, Lorg/telegram/ui/ProfileActivity$9$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v1, v11, v6}, Lorg/telegram/ui/ProfileActivity$9$2;-><init>(Lorg/telegram/ui/ProfileActivity$9;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V

    invoke-virtual {v4, v13, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1224
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1225
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1227
    .end local v1    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "allowKick":Z
    .end local v3    # "allowSetAdmin":Z
    .end local v4    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v5    # "canEditAdmin":Z
    .end local v6    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v8    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v12    # "usr":Lorg/telegram/tgnet/TLRPC$User;
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    move/from16 v0, p2

    invoke-static {v13, v0}, Lorg/telegram/ui/ProfileActivity;->access$3800(Lorg/telegram/ui/ProfileActivity;I)Z

    move-result v13

    goto/16 :goto_0
.end method
