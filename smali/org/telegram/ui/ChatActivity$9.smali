.class Lorg/telegram/ui/ChatActivity$9;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 995
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 30
    .param p1, "id"    # I

    .prologue
    .line 998
    const/4 v4, -0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_4

    .line 999
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1000
    const/16 v18, 0x1

    .local v18, "a":I
    :goto_0
    if-ltz v18, :cond_0

    .line 1001
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1200(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v18

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1002
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1300(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v18

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1000
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    .line 1004
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->cantDeleteMessagesCount:I
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$1402(Lorg/telegram/ui/ChatActivity;I)I

    .line 1005
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingMessage()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1006
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setEditingMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1011
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1700(Lorg/telegram/ui/ChatActivity;)V

    .line 1295
    .end local v18    # "a":I
    :cond_1
    :goto_2
    return-void

    .line 1008
    .restart local v18    # "a":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1009
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x1

    # invokes: Lorg/telegram/ui/ChatActivity;->updatePinnedMessageView(Z)V
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$1600(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_1

    .line 1013
    .end local v18    # "a":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    goto :goto_2

    .line 1015
    :cond_4
    const/16 v4, 0xa

    move/from16 v0, p1

    if-ne v0, v4, :cond_b

    .line 1016
    const-string/jumbo v29, ""

    .line 1017
    .local v29, "str":Ljava/lang/String;
    const/16 v28, 0x0

    .line 1018
    .local v28, "previousUid":I
    const/16 v18, 0x1

    .restart local v18    # "a":I
    :goto_3
    if-ltz v18, :cond_8

    .line 1019
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1300(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v18

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1020
    .local v24, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v4, :cond_6

    .line 1021
    invoke-static/range {v24 .. v24}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1025
    :goto_4
    const/16 v20, 0x0

    .local v20, "b":I
    :goto_5
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_7

    .line 1026
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 1027
    .local v27, "messageId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1300(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v18

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 1028
    .local v6, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 1029
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1031
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v7, 0x1

    move/from16 v0, v28

    # invokes: Lorg/telegram/ui/ChatActivity;->getMessageContent(Lorg/telegram/messenger/MessageObject;IZ)Ljava/lang/String;
    invoke-static {v5, v6, v0, v7}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1032
    iget-object v4, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v28, v0

    .line 1025
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 1023
    .end local v6    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v20    # "b":I
    .end local v27    # "messageId":Ljava/lang/Integer;
    :cond_6
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_4

    .line 1018
    .restart local v20    # "b":I
    :cond_7
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_3

    .line 1035
    .end local v20    # "b":I
    .end local v24    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_8
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    .line 1036
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)V

    .line 1038
    :cond_9
    const/16 v18, 0x1

    :goto_6
    if-ltz v18, :cond_a

    .line 1039
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1200(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v18

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1040
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1300(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v18

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1038
    add-int/lit8 v18, v18, -0x1

    goto :goto_6

    .line 1042
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->cantDeleteMessagesCount:I
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$1402(Lorg/telegram/ui/ChatActivity;I)I

    .line 1043
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1044
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x1

    # invokes: Lorg/telegram/ui/ChatActivity;->updatePinnedMessageView(Z)V
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$1600(Lorg/telegram/ui/ChatActivity;Z)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1700(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_2

    .line 1046
    .end local v18    # "a":I
    .end local v28    # "previousUid":I
    .end local v29    # "str":Ljava/lang/String;
    :cond_b
    const/16 v4, 0xc

    move/from16 v0, p1

    if-ne v0, v4, :cond_c

    .line 1047
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1050
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    # invokes: Lorg/telegram/ui/ChatActivity;->createDeleteMessagesAlert(Lorg/telegram/messenger/MessageObject;)V
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$2000(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_2

    .line 1051
    :cond_c
    const/16 v4, 0xb

    move/from16 v0, p1

    if-eq v0, v4, :cond_d

    const/16 v4, 0x6f

    move/from16 v0, p1

    if-ne v0, v4, :cond_f

    .line 1052
    :cond_d
    const/16 v4, 0x6f

    move/from16 v0, p1

    if-ne v0, v4, :cond_e

    .line 1053
    const/4 v4, 0x1

    # setter for: Lorg/telegram/ui/ChatActivity;->QuoteForward:Z
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2102(Z)Z

    .line 1057
    :goto_7
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 1058
    .local v19, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "onlySelect"

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1059
    const-string/jumbo v4, "dialogsType"

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1060
    new-instance v23, Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1061
    .local v23, "fragment":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2

    .line 1055
    .end local v19    # "args":Landroid/os/Bundle;
    .end local v23    # "fragment":Lorg/telegram/ui/DialogsActivity;
    :cond_e
    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->QuoteForward:Z
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2102(Z)Z

    goto :goto_7

    .line 1063
    :cond_f
    const/16 v4, 0xd

    move/from16 v0, p1

    if-ne v0, v4, :cond_10

    .line 1064
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1067
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-static {v5, v7}, Lorg/telegram/ui/Components/AlertsCreator;->createTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 1068
    :cond_10
    const/16 v4, 0xf

    move/from16 v0, p1

    if-eq v0, v4, :cond_11

    const/16 v4, 0x10

    move/from16 v0, p1

    if-ne v0, v4, :cond_15

    .line 1069
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1072
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    long-to-int v4, v4

    if-gez v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    const/16 v7, 0x20

    shr-long/2addr v4, v7

    long-to-int v4, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_12

    const/16 v25, 0x1

    .line 1073
    .local v25, "isChat":Z
    :goto_8
    new-instance v21, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1074
    .local v21, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v4, "AppName"

    const v5, 0x7f07007d

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1075
    const/16 v4, 0xf

    move/from16 v0, p1

    if-ne v0, v4, :cond_13

    .line 1076
    const-string/jumbo v4, "AreYouSureClearHistory"

    const v5, 0x7f070090

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1084
    :goto_9
    const-string/jumbo v4, "OK"

    const v5, 0x7f0704f5

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChatActivity$9$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/ui/ChatActivity$9$1;-><init>(Lorg/telegram/ui/ChatActivity$9;IZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1103
    const-string/jumbo v4, "Cancel"

    const v5, 0x7f070105

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1104
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 1072
    .end local v21    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v25    # "isChat":Z
    :cond_12
    const/16 v25, 0x0

    goto :goto_8

    .line 1078
    .restart local v21    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .restart local v25    # "isChat":Z
    :cond_13
    if-eqz v25, :cond_14

    .line 1079
    const-string/jumbo v4, "AreYouSureDeleteAndExit"

    const v5, 0x7f070093

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_9

    .line 1081
    :cond_14
    const-string/jumbo v4, "AreYouSureDeleteThisChat"

    const v5, 0x7f070097

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_9

    .line 1106
    .end local v21    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v25    # "isChat":Z
    :cond_15
    const/16 v4, 0x1c

    move/from16 v0, p1

    if-ne v0, v4, :cond_17

    .line 1107
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1110
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    long-to-int v4, v4

    if-gez v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    const/16 v7, 0x20

    shr-long/2addr v4, v7

    long-to-int v4, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_16

    const/16 v25, 0x1

    .line 1111
    .restart local v25    # "isChat":Z
    :goto_a
    if-eqz v25, :cond_1

    .line 1114
    new-instance v21, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1115
    .restart local v21    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v4, "AppName"

    const v5, 0x7f07007d

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1116
    const-string/jumbo v4, "LeaveWithoutDeleteMsg"

    const v5, 0x7f0703d7

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1117
    const-string/jumbo v4, "OK"

    const v5, 0x7f0704f5

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChatActivity$9$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/ChatActivity$9$2;-><init>(Lorg/telegram/ui/ChatActivity$9;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1161
    const-string/jumbo v4, "Cancel"

    const v5, 0x7f070105

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1162
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 1110
    .end local v21    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v25    # "isChat":Z
    :cond_16
    const/16 v25, 0x0

    goto :goto_a

    .line 1163
    :cond_17
    const/16 v4, 0x1b

    move/from16 v0, p1

    if-ne v0, v4, :cond_18

    .line 1164
    new-instance v4, Lorg/telegram/ui/ChatActivity$9$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ChatActivity$9$3;-><init>(Lorg/telegram/ui/ChatActivity$9;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1203
    :cond_18
    const/16 v4, 0x11

    move/from16 v0, p1

    if-ne v0, v4, :cond_1a

    .line 1204
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1207
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_19

    .line 1208
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 1209
    .restart local v19    # "args":Landroid/os/Bundle;
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1210
    const-string/jumbo v4, "addContact"

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v5, Lorg/telegram/ui/ContactAddActivity;

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lorg/telegram/ui/ContactAddActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2

    .line 1213
    .end local v19    # "args":Landroid/os/Bundle;
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$2400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->shareMyContact(Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_2

    .line 1215
    :cond_1a
    const/16 v4, 0x12

    move/from16 v0, p1

    if-ne v0, v4, :cond_1b

    .line 1216
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    # invokes: Lorg/telegram/ui/ChatActivity;->toggleMute(Z)V
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$2500(Lorg/telegram/ui/ChatActivity;Z)V

    goto/16 :goto_2

    .line 1217
    :cond_1b
    const/16 v4, 0x15

    move/from16 v0, p1

    if-ne v0, v4, :cond_1c

    .line 1218
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5, v8, v9, v7}, Lorg/telegram/ui/Components/AlertsCreator;->createReportAlert(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 1219
    :cond_1c
    const/16 v4, 0x13

    move/from16 v0, p1

    if-ne v0, v4, :cond_21

    .line 1220
    const/4 v6, 0x0

    .line 1221
    .restart local v6    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v18, 0x1

    .restart local v18    # "a":I
    :goto_b
    if-ltz v18, :cond_1e

    .line 1222
    if-nez v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1200(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v18

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    .line 1223
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1200(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v18

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1224
    .restart local v24    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->messagesDict:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v18

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "messageObject":Lorg/telegram/messenger/MessageObject;
    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 1226
    .end local v24    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1200(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v18

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1227
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1300(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v18

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1221
    add-int/lit8 v18, v18, -0x1

    goto :goto_b

    .line 1229
    :cond_1e
    if-eqz v6, :cond_20

    iget-object v4, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gtz v4, :cond_1f

    iget-object v4, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v4, :cond_20

    .line 1230
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 1232
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->cantDeleteMessagesCount:I
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$1402(Lorg/telegram/ui/ChatActivity;I)I

    .line 1233
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1234
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x1

    # invokes: Lorg/telegram/ui/ChatActivity;->updatePinnedMessageView(Z)V
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$1600(Lorg/telegram/ui/ChatActivity;Z)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1700(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_2

    .line 1236
    .end local v6    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v18    # "a":I
    :cond_21
    const/16 v4, 0xe

    move/from16 v0, p1

    if-ne v0, v4, :cond_22

    .line 1237
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->openAttachMenu()V
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2800(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_2

    .line 1238
    :cond_22
    const/16 v4, 0x1e

    move/from16 v0, p1

    if-ne v0, v4, :cond_23

    .line 1239
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v8

    const-string/jumbo v9, "/help"

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v8 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 1240
    :cond_23
    const/16 v4, 0x1f

    move/from16 v0, p1

    if-ne v0, v4, :cond_24

    .line 1241
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v8

    const-string/jumbo v9, "/settings"

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v8 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 1242
    :cond_24
    const/16 v4, 0x28

    move/from16 v0, p1

    if-ne v0, v4, :cond_25

    .line 1243
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    # invokes: Lorg/telegram/ui/ChatActivity;->openSearchWithText(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$2900(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1244
    :cond_25
    const/16 v4, 0x20

    move/from16 v0, p1

    if-ne v0, v4, :cond_28

    .line 1246
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1249
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_27

    .line 1250
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_userFull;)V

    goto/16 :goto_2

    .line 1252
    :cond_27
    new-instance v21, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1253
    .restart local v21    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const-string/jumbo v7, "VoipInCallBranding"

    const v8, 0x7f070757

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v7, "PhoneMobile"

    const v8, 0x7f070573

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    new-instance v5, Lorg/telegram/ui/ChatActivity$9$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/ChatActivity$9$4;-><init>(Lorg/telegram/ui/ChatActivity$9;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1269
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 1274
    .end local v21    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_28
    const/16 v4, 0x1d

    move/from16 v0, p1

    if-ne v0, v4, :cond_29

    .line 1275
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->openAddMember()V
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3000(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_2

    .line 1276
    :cond_29
    const/16 v4, 0x63

    move/from16 v0, p1

    if-ne v0, v4, :cond_2a

    .line 1277
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v5, Lorg/telegram/ui/WallpapersActivity;

    invoke-direct {v5}, Lorg/telegram/ui/WallpapersActivity;-><init>()V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2

    .line 1278
    :cond_2a
    const/16 v4, 0x62

    move/from16 v0, p1

    if-ne v0, v4, :cond_2c

    .line 1280
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 1281
    .local v22, "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v22, :cond_1

    .line 1282
    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Favorite;->isFavorite(Ljava/lang/Long;)Z

    move-result v26

    .line 1283
    .local v26, "isFav":Z
    if-eqz v26, :cond_2b

    .line 1284
    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Favorite;->deleteFavorite(Ljava/lang/Long;)V

    .line 1285
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1290
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    move/from16 v0, v26

    # invokes: Lorg/telegram/ui/ChatActivity;->updateFavoriteTitle(Z)V
    invoke-static {v4, v0}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;Z)V

    goto/16 :goto_2

    .line 1287
    :cond_2b
    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Favorite;->addFavorite(Ljava/lang/Long;)V

    .line 1288
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1291
    .end local v22    # "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v26    # "isFav":Z
    :cond_2c
    const/16 v4, 0x61

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    .line 1292
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x1

    # setter for: Lorg/telegram/ui/ChatActivity;->goToFirstMsg:Z
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$3202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 1293
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZ)V

    goto/16 :goto_2
.end method
