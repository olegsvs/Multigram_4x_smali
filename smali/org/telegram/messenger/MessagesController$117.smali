.class Lorg/telegram/messenger/MessagesController$117;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$channelViews:Landroid/util/SparseArray;

.field final synthetic val$chatInfoToUpdate:Ljava/util/ArrayList;

.field final synthetic val$contactsIds:Ljava/util/ArrayList;

.field final synthetic val$editingMessages:Ljava/util/HashMap;

.field final synthetic val$interfaceUpdateMaskFinal:I

.field final synthetic val$messages:Ljava/util/HashMap;

.field final synthetic val$printChangedArg:Z

.field final synthetic val$updatesOnMainThread:Ljava/util/ArrayList;

.field final synthetic val$webPages:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;ILjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 7596
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$117;->val$interfaceUpdateMaskFinal:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$117;->val$updatesOnMainThread:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$117;->val$webPages:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$117;->val$messages:Ljava/util/HashMap;

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$117;->val$editingMessages:Ljava/util/HashMap;

    iput-boolean p7, p0, Lorg/telegram/messenger/MessagesController$117;->val$printChangedArg:Z

    iput-object p8, p0, Lorg/telegram/messenger/MessagesController$117;->val$contactsIds:Ljava/util/ArrayList;

    iput-object p9, p0, Lorg/telegram/messenger/MessagesController$117;->val$chatInfoToUpdate:Ljava/util/ArrayList;

    iput-object p10, p0, Lorg/telegram/messenger/MessagesController$117;->val$channelViews:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 52

    .prologue
    .line 7599
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController$117;->val$interfaceUpdateMaskFinal:I

    move/from16 v47, v0

    .line 7600
    .local v47, "updateMask":I
    const/16 v27, 0x0

    .line 7602
    .local v27, "hasDraftUpdates":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->val$updatesOnMainThread:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 7603
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 7604
    .local v18, "dbUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 7605
    .local v19, "dbUsersStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    const/16 v21, 0x0

    .line 7606
    .local v21, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->val$updatesOnMainThread:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 7607
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->val$updatesOnMainThread:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/telegram/tgnet/TLRPC$Update;

    .line 7608
    .local v44, "update":Lorg/telegram/tgnet/TLRPC$Update;
    new-instance v41, Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct/range {v41 .. v41}, Lorg/telegram/tgnet/TLRPC$User;-><init>()V

    .line 7609
    .local v41, "toDbUser":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v44

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v41

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 7610
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v17

    .line 7611
    .local v17, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;

    if-eqz v3, :cond_3

    .line 7612
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->key:Lorg/telegram/tgnet/TLRPC$PrivacyKey;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStatusTimestamp;

    if-eqz v3, :cond_1

    .line 7613
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    move-object/from16 v0, v44

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->rules:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V

    .line 7606
    .end local v44    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7614
    .restart local v44    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_1
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->key:Lorg/telegram/tgnet/TLRPC$PrivacyKey;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyChatInvite;

    if-eqz v3, :cond_2

    .line 7615
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    move-object/from16 v0, v44

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->rules:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 7616
    :cond_2
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->key:Lorg/telegram/tgnet/TLRPC$PrivacyKey;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneCall;

    if-eqz v3, :cond_0

    .line 7617
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    move-object/from16 v0, v44

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->rules:Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 7619
    :cond_3
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;

    if-eqz v3, :cond_9

    .line 7620
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;

    if-eqz v3, :cond_6

    .line 7621
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v6, -0x64

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 7627
    :cond_4
    :goto_2
    if-eqz v17, :cond_5

    .line 7628
    move-object/from16 v0, v44

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v17

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 7629
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v0, v17

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 7631
    move-object/from16 v0, v44

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-eq v3, v6, :cond_5

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlineToast:Z

    if-nez v3, :cond_8

    .line 7636
    :cond_5
    :goto_3
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v0, v41

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 7637
    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7638
    move-object/from16 v0, v44

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 7639
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v3

    move-object/from16 v0, v44

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/NotificationsController;->setLastOnlineFromOtherDevice(I)V

    goto/16 :goto_1

    .line 7622
    :cond_6
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;

    if-eqz v3, :cond_7

    .line 7623
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v6, -0x65

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_2

    .line 7624
    :cond_7
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;

    if-eqz v3, :cond_4

    .line 7625
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v6, -0x66

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_2

    .line 7631
    :cond_8
    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->playingAGame:Z

    if-nez v3, :cond_5

    .line 7632
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->showStatusNotifications:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v17

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_3

    .line 7641
    :cond_9
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    if-eqz v3, :cond_e

    .line 7642
    if-eqz v17, :cond_d

    .line 7643
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/UserObject;->isContact(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 7644
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->first_name:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 7645
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->last_name:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 7647
    :cond_a
    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 7648
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$5600(Lorg/telegram/messenger/MessagesController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7650
    :cond_b
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 7651
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$5600(Lorg/telegram/messenger/MessagesController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v44

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v3, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7653
    :cond_c
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 7655
    :cond_d
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->first_name:Ljava/lang/String;

    move-object/from16 v0, v41

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 7656
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->last_name:Ljava/lang/String;

    move-object/from16 v0, v41

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 7657
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    move-object/from16 v0, v41

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 7658
    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 7659
    :cond_e
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;

    if-eqz v3, :cond_11

    move-object/from16 v45, v44

    .line 7660
    check-cast v45, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;

    .line 7662
    .local v45, "updateDialogPinned":Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;
    move-object/from16 v0, v45

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v3, :cond_f

    .line 7663
    move-object/from16 v0, v45

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v4, v3

    .line 7669
    .local v4, "did":J
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v45

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->pinned:Z

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/MessagesController;->pinDialog(JZLorg/telegram/tgnet/TLRPC$InputPeer;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7670
    const/4 v3, 0x0

    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    .line 7671
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 7672
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->loadPinnedDialogs(JLjava/util/ArrayList;)V

    goto/16 :goto_1

    .line 7664
    .end local v4    # "did":J
    :cond_f
    move-object/from16 v0, v45

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    if-eqz v3, :cond_10

    .line 7665
    move-object/from16 v0, v45

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v3, v3

    int-to-long v4, v3

    .restart local v4    # "did":J
    goto :goto_4

    .line 7667
    .end local v4    # "did":J
    :cond_10
    move-object/from16 v0, v45

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v3, v3

    int-to-long v4, v3

    .restart local v4    # "did":J
    goto :goto_4

    .line 7674
    .end local v4    # "did":J
    .end local v45    # "updateDialogPinned":Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;
    :cond_11
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;

    if-eqz v3, :cond_16

    .line 7675
    const/4 v3, 0x0

    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    .line 7676
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 7678
    move-object/from16 v0, v44

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_14

    .line 7679
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 7680
    .local v33, "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast v44, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;

    .end local v44    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v44

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->order:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    .line 7681
    .local v36, "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Peer;>;"
    const/4 v13, 0x0

    .local v13, "b":I
    :goto_5
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_15

    .line 7683
    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/telegram/tgnet/TLRPC$Peer;

    .line 7684
    .local v35, "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v0, v35

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v3, :cond_12

    .line 7685
    move-object/from16 v0, v35

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v4, v3

    .line 7691
    .restart local v4    # "did":J
    :goto_6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7681
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 7686
    .end local v4    # "did":J
    :cond_12
    move-object/from16 v0, v35

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v3, :cond_13

    .line 7687
    move-object/from16 v0, v35

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v3, v3

    int-to-long v4, v3

    .restart local v4    # "did":J
    goto :goto_6

    .line 7689
    .end local v4    # "did":J
    :cond_13
    move-object/from16 v0, v35

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v3, v3

    int-to-long v4, v3

    .restart local v4    # "did":J
    goto :goto_6

    .line 7694
    .end local v4    # "did":J
    .end local v13    # "b":I
    .end local v33    # "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v35    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    .end local v36    # "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Peer;>;"
    .restart local v44    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_14
    const/16 v33, 0x0

    .line 7696
    .end local v44    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .restart local v33    # "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    const-wide/16 v8, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v3, v8, v9, v0}, Lorg/telegram/messenger/MessagesController;->loadPinnedDialogs(JLjava/util/ArrayList;)V

    goto/16 :goto_1

    .line 7697
    .end local v33    # "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v44    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_16
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    if-eqz v3, :cond_18

    .line 7698
    if-eqz v17, :cond_17

    .line 7699
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v0, v17

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 7701
    :cond_17
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v0, v41

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 7702
    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 7703
    :cond_18
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    if-eqz v3, :cond_1a

    .line 7704
    if-eqz v17, :cond_19

    .line 7705
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->phone:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 7706
    sget-object v3, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/messenger/MessagesController$117$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/MessagesController$117$1;-><init>(Lorg/telegram/messenger/MessagesController$117;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 7713
    :cond_19
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->phone:Ljava/lang/String;

    move-object/from16 v0, v41

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 7714
    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 7715
    :cond_1a
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    if-eqz v3, :cond_23

    move-object/from16 v48, v44

    .line 7716
    check-cast v48, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    .line 7717
    .local v48, "updateNotifySettings":Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    if-eqz v3, :cond_0

    move-object/from16 v0, v48

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_notifyPeer;

    if-eqz v3, :cond_0

    .line 7718
    if-nez v21, :cond_1b

    .line 7719
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->Notifications:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 7720
    .local v37, "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 7723
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    :cond_1b
    move-object/from16 v0, v48

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v3, :cond_1e

    .line 7724
    move-object/from16 v0, v48

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v3

    move-wide/from16 v22, v0

    .line 7731
    .local v22, "dialog_id":J
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 7732
    .local v20, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v20, :cond_1c

    .line 7733
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-object/from16 v0, v20

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 7735
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "silent_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v44

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7736
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v16

    .line 7737
    .local v16, "currentTime":I
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    move/from16 v0, v16

    if-le v3, v0, :cond_21

    .line 7738
    const/16 v42, 0x0

    .line 7739
    .local v42, "until":I
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    const v6, 0x1e13380

    add-int v6, v6, v16

    if-le v3, v6, :cond_20

    .line 7740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7741
    if-eqz v20, :cond_1d

    .line 7742
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v6, 0x7fffffff

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 7752
    :cond_1d
    :goto_8
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    move/from16 v0, v42

    int-to-long v8, v0

    const/16 v6, 0x20

    shl-long/2addr v8, v6

    const-wide/16 v10, 0x1

    or-long/2addr v8, v10

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 7753
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    goto/16 :goto_1

    .line 7725
    .end local v16    # "currentTime":I
    .end local v20    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v22    # "dialog_id":J
    .end local v42    # "until":I
    :cond_1e
    move-object/from16 v0, v48

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v3, :cond_1f

    .line 7726
    move-object/from16 v0, v48

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v3, v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    .restart local v22    # "dialog_id":J
    goto/16 :goto_7

    .line 7728
    .end local v22    # "dialog_id":J
    :cond_1f
    move-object/from16 v0, v48

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v3, v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    .restart local v22    # "dialog_id":J
    goto/16 :goto_7

    .line 7745
    .restart local v16    # "currentTime":I
    .restart local v20    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v42    # "until":I
    :cond_20
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v0, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    move/from16 v42, v0

    .line 7746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyuntil_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v44

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7748
    if-eqz v20, :cond_1d

    .line 7749
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move/from16 v0, v42

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    goto/16 :goto_8

    .line 7755
    .end local v42    # "until":I
    :cond_21
    if-eqz v20, :cond_22

    .line 7756
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const/4 v6, 0x0

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 7758
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7759
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    const-wide/16 v8, 0x0

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    goto/16 :goto_1

    .line 7762
    .end local v16    # "currentTime":I
    .end local v20    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v22    # "dialog_id":J
    .end local v48    # "updateNotifySettings":Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;
    :cond_23
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    if-eqz v3, :cond_26

    .line 7763
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    int-to-long v8, v6

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 7764
    .restart local v20    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v15

    .line 7765
    .local v15, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v15, :cond_24

    .line 7766
    if-nez v20, :cond_25

    instance-of v3, v15, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-eqz v3, :cond_25

    iget-boolean v3, v15, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v3, :cond_25

    .line 7767
    sget-object v3, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/messenger/MessagesController$117$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/MessagesController$117$2;-><init>(Lorg/telegram/messenger/MessagesController$117;Lorg/telegram/tgnet/TLRPC$Update;)V

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 7777
    :cond_24
    :goto_9
    move/from16 v0, v47

    or-int/lit16 v0, v0, 0x2000

    move/from16 v47, v0

    .line 7778
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v3, v6, v8, v9}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    goto/16 :goto_1

    .line 7773
    :cond_25
    iget-boolean v3, v15, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz v3, :cond_24

    if-eqz v20, :cond_24

    .line 7774
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v20

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/4 v6, 0x0

    invoke-virtual {v3, v8, v9, v6}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    goto :goto_9

    .line 7779
    .end local v15    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v20    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_26
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatAdmins;

    if-eqz v3, :cond_27

    .line 7780
    move/from16 v0, v47

    or-int/lit16 v0, v0, 0x4000

    move/from16 v47, v0

    goto/16 :goto_1

    .line 7781
    :cond_27
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;

    if-eqz v3, :cond_29

    .line 7782
    move-object/from16 v0, v44

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->masks:Z

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    :goto_a
    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static {v3, v6, v8}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    goto/16 :goto_1

    :cond_28
    const/4 v3, 0x0

    goto :goto_a

    .line 7783
    :cond_29
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;

    if-eqz v3, :cond_2b

    .line 7784
    move-object/from16 v0, v44

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->masks:Z

    if-eqz v3, :cond_2a

    const/4 v3, 0x1

    :goto_b
    check-cast v44, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;

    .end local v44    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v44

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->order:Ljava/util/ArrayList;

    invoke-static {v3, v6}, Lorg/telegram/messenger/query/StickersQuery;->reorderStickers(ILjava/util/ArrayList;)V

    goto/16 :goto_1

    .restart local v44    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_b

    .line 7785
    :cond_2b
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;

    if-eqz v3, :cond_2c

    .line 7786
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->stickerset:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v3}, Lorg/telegram/messenger/query/StickersQuery;->addNewStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    goto/16 :goto_1

    .line 7787
    :cond_2c
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;

    if-eqz v3, :cond_2d

    .line 7788
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "emoji"

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    .line 7789
    .local v24, "editor2":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "lastGifLoadTime"

    const-wide/16 v8, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 7790
    .end local v24    # "editor2":Landroid/content/SharedPreferences$Editor;
    :cond_2d
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateRecentStickers;

    if-eqz v3, :cond_2e

    .line 7791
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "emoji"

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    .line 7792
    .restart local v24    # "editor2":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "lastStickersLoadTime"

    const-wide/16 v8, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 7793
    .end local v24    # "editor2":Landroid/content/SharedPreferences$Editor;
    :cond_2e
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    if-eqz v3, :cond_31

    .line 7794
    const/16 v27, 0x1

    move-object/from16 v3, v44

    .line 7796
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    .line 7797
    .restart local v35    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v0, v35

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v3, :cond_2f

    .line 7798
    move-object/from16 v0, v35

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v4, v3

    .line 7804
    .restart local v4    # "did":J
    :goto_c
    move-object/from16 v0, v44

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static {v4, v5, v3, v6, v8}, Lorg/telegram/messenger/query/DraftQuery;->saveDraft(JLorg/telegram/tgnet/TLRPC$DraftMessage;Lorg/telegram/tgnet/TLRPC$Message;Z)V

    goto/16 :goto_1

    .line 7799
    .end local v4    # "did":J
    :cond_2f
    move-object/from16 v0, v35

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v3, :cond_30

    .line 7800
    move-object/from16 v0, v35

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v3, v3

    int-to-long v4, v3

    .restart local v4    # "did":J
    goto :goto_c

    .line 7802
    .end local v4    # "did":J
    :cond_30
    move-object/from16 v0, v35

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v3, v3

    int-to-long v4, v3

    .restart local v4    # "did":J
    goto :goto_c

    .line 7805
    .end local v4    # "did":J
    .end local v35    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_31
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedStickers;

    if-eqz v3, :cond_32

    .line 7806
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/messenger/query/StickersQuery;->markFaturedStickersAsRead(Z)V

    goto/16 :goto_1

    .line 7807
    :cond_32
    move-object/from16 v0, v44

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;

    if-eqz v3, :cond_0

    move-object/from16 v43, v44

    .line 7808
    check-cast v43, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;

    .line 7809
    .local v43, "upd":Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;
    move-object/from16 v0, v43

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;->phone_call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 7810
    .local v14, "call":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v39

    .line 7811
    .local v39, "svc":Lorg/telegram/messenger/voip/VoIPService;
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_33

    .line 7812
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Received call in update: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7813
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "call id "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7815
    :cond_33
    instance-of v3, v14, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;

    if-eqz v3, :cond_3a

    .line 7816
    iget v3, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->date:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    div-int/lit16 v6, v6, 0x3e8

    add-int/2addr v3, v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    if-ge v3, v6, :cond_34

    .line 7817
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_0

    .line 7818
    const-string/jumbo v3, "ignoring too old call"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7821
    :cond_34
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/telephony/TelephonyManager;

    .line 7822
    .local v40, "tm":Landroid/telephony/TelephonyManager;
    if-nez v39, :cond_35

    sget-object v3, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-nez v3, :cond_35

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_37

    .line 7823
    :cond_35
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_36

    .line 7824
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Auto-declining call "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " because there\'s already active one"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7826
    :cond_36
    new-instance v38, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;

    invoke-direct/range {v38 .. v38}, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;-><init>()V

    .line 7827
    .local v38, "req":Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    move-object/from16 v0, v38

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 7828
    move-object/from16 v0, v38

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-wide v8, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 7829
    move-object/from16 v0, v38

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-wide v8, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 7830
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;-><init>()V

    move-object/from16 v0, v38

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 7831
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v6, Lorg/telegram/messenger/MessagesController$117$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/telegram/messenger/MessagesController$117$3;-><init>(Lorg/telegram/messenger/MessagesController$117;)V

    move-object/from16 v0, v38

    invoke-virtual {v3, v0, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    .line 7842
    .end local v38    # "req":Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;
    :cond_37
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_38

    .line 7843
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting service for call "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7845
    :cond_38
    sput-object v14, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 7846
    new-instance v29, Landroid/content/Intent;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v6, Lorg/telegram/messenger/voip/VoIPService;

    move-object/from16 v0, v29

    invoke-direct {v0, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7847
    .local v29, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "is_outgoing"

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7848
    const-string/jumbo v6, "user_id"

    iget v3, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->participant_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v3, v8, :cond_39

    iget v3, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->admin_id:I

    :goto_d
    move-object/from16 v0, v29

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7849
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 7848
    :cond_39
    iget v3, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->participant_id:I

    goto :goto_d

    .line 7851
    .end local v29    # "intent":Landroid/content/Intent;
    .end local v40    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3a
    if-eqz v39, :cond_3b

    if-eqz v14, :cond_3b

    .line 7852
    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/voip/VoIPService;->onCallUpdated(Lorg/telegram/tgnet/TLRPC$PhoneCall;)V

    goto/16 :goto_1

    .line 7853
    :cond_3b
    sget-object v3, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v3, :cond_0

    .line 7854
    const-string/jumbo v3, "Updated the call while the service is starting"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7855
    iget-wide v8, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    sget-object v3, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    cmp-long v3, v8, v10

    if-nez v3, :cond_0

    .line 7856
    sput-object v14, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    goto/16 :goto_1

    .line 7862
    .end local v14    # "call":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    .end local v17    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v39    # "svc":Lorg/telegram/messenger/voip/VoIPService;
    .end local v41    # "toDbUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v43    # "upd":Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;
    .end local v44    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_3c
    if-eqz v21, :cond_3d

    .line 7863
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7864
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7866
    :cond_3d
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v6, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->updateUsers(Ljava/util/ArrayList;ZZZ)V

    .line 7867
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v6, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->updateUsers(Ljava/util/ArrayList;ZZZ)V

    .line 7870
    .end local v2    # "a":I
    .end local v18    # "dbUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v19    # "dbUsersStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v21    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->val$webPages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_44

    .line 7871
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didReceivedWebpagesInUpdates:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MessagesController$117;->val$webPages:Ljava/util/HashMap;

    aput-object v10, v8, v9

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7872
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->val$webPages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :cond_3f
    :goto_e
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map$Entry;

    .line 7873
    .local v26, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$4300(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 7874
    .local v12, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz v12, :cond_3f

    .line 7875
    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 7876
    .local v50, "webpage":Lorg/telegram/tgnet/TLRPC$WebPage;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7877
    .local v7, "messagesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    const-wide/16 v22, 0x0

    .line 7878
    .restart local v22    # "dialog_id":J
    move-object/from16 v0, v50

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-nez v3, :cond_40

    move-object/from16 v0, v50

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    if-eqz v3, :cond_42

    .line 7879
    :cond_40
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 7880
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v50

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 7881
    if-nez v2, :cond_41

    .line 7882
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v22

    .line 7883
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 7885
    :cond_41
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7879
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 7888
    .end local v2    # "a":I
    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$4300(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v50

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7890
    :cond_43
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 7891
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v11

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 7892
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v12, v8, v9

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 7898
    .end local v7    # "messagesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v22    # "dialog_id":J
    .end local v26    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    .end local v50    # "webpage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_44
    const/16 v46, 0x0

    .line 7899
    .local v46, "updateDialogs":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->val$messages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_49

    .line 7900
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->val$messages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .line 7901
    .local v25, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Long;

    .line 7902
    .local v30, "key":Ljava/lang/Long;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/ArrayList;

    .line 7903
    .local v49, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v49

    invoke-virtual {v6, v8, v9, v0}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    goto :goto_10

    .line 7905
    .end local v25    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v30    # "key":Ljava/lang/Long;
    .end local v49    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_45
    const/16 v46, 0x1

    .line 7910
    :cond_46
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->val$editingMessages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 7911
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->val$editingMessages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/Map$Entry;

    .line 7912
    .local v34, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-interface/range {v34 .. v34}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    .line 7913
    .local v22, "dialog_id":Ljava/lang/Long;
    invoke-interface/range {v34 .. v34}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 7914
    .restart local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/telegram/messenger/MessageObject;

    .line 7915
    .local v32, "oldObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v32, :cond_48

    .line 7916
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_13
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_48

    .line 7917
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/telegram/messenger/MessageObject;

    .line 7918
    .local v31, "newMessage":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-ne v6, v8, :cond_4a

    .line 7919
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7920
    move-object/from16 v0, v31

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v6, :cond_47

    move-object/from16 v0, v31

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v6, :cond_47

    .line 7921
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v31

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7923
    :cond_47
    const/16 v46, 0x1

    .line 7928
    .end local v2    # "a":I
    .end local v31    # "newMessage":Lorg/telegram/messenger/MessageObject;
    :cond_48
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v12, v8, v9}, Lorg/telegram/messenger/query/MessagesQuery;->loadReplyMessagesForMessages(Ljava/util/ArrayList;J)V

    .line 7929
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v22, v9, v10

    const/4 v10, 0x1

    aput-object v12, v9, v10

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 7906
    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v22    # "dialog_id":Ljava/lang/Long;
    .end local v32    # "oldObject":Lorg/telegram/messenger/MessageObject;
    .end local v34    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    :cond_49
    if-eqz v27, :cond_46

    .line 7907
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 7908
    const/16 v46, 0x1

    goto/16 :goto_11

    .line 7916
    .restart local v2    # "a":I
    .restart local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v22    # "dialog_id":Ljava/lang/Long;
    .restart local v31    # "newMessage":Lorg/telegram/messenger/MessageObject;
    .restart local v32    # "oldObject":Lorg/telegram/messenger/MessageObject;
    .restart local v34    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 7932
    .end local v2    # "a":I
    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v22    # "dialog_id":Ljava/lang/Long;
    .end local v31    # "newMessage":Lorg/telegram/messenger/MessageObject;
    .end local v32    # "oldObject":Lorg/telegram/messenger/MessageObject;
    .end local v34    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    :cond_4b
    if-eqz v46, :cond_4c

    .line 7933
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7936
    :cond_4c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/MessagesController$117;->val$printChangedArg:Z

    if-eqz v3, :cond_4d

    .line 7937
    or-int/lit8 v47, v47, 0x40

    .line 7939
    :cond_4d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->val$contactsIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4e

    .line 7940
    or-int/lit8 v47, v47, 0x1

    .line 7941
    move/from16 v0, v47

    or-int/lit16 v0, v0, 0x80

    move/from16 v47, v0

    .line 7943
    :cond_4e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->val$chatInfoToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 7944
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->val$chatInfoToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 7945
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->val$chatInfoToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 7946
    .local v28, "info":Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/MessagesStorage;->updateChatParticipants(Lorg/telegram/tgnet/TLRPC$ChatParticipants;)V

    .line 7944
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 7949
    .end local v2    # "a":I
    .end local v28    # "info":Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    :cond_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$117;->val$channelViews:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_50

    .line 7950
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didUpdatedMessagesViews:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MessagesController$117;->val$channelViews:Landroid/util/SparseArray;

    aput-object v10, v8, v9

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7952
    :cond_50
    if-eqz v47, :cond_51

    .line 7953
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7955
    :cond_51
    return-void
.end method
