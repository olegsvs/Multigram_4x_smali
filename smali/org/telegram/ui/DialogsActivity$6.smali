.class Lorg/telegram/ui/DialogsActivity$6;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 434
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 27
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v23

    if-nez v23, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    const-wide/16 v12, 0x0

    .line 441
    .local v12, "dialog_id":J
    const/16 v17, 0x0

    .line 442
    .local v17, "message_id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v6

    .line 443
    .local v6, "adapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    if-ne v6, v0, :cond_4

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v10

    .line 445
    .local v10, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v10, :cond_0

    .line 448
    iget-wide v12, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 492
    .end local v10    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_2
    :goto_1
    const-wide/16 v24, 0x0

    cmp-long v23, v12, v24

    if-eqz v23, :cond_0

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->touchPositionDP:F
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1900(Lorg/telegram/ui/DialogsActivity;)F

    move-result v23

    const/high16 v24, 0x42820000    # 65.0f

    cmpg-float v23, v23, v24

    if-gez v23, :cond_12

    .line 497
    sget-object v23, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v24, "plusconfig"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 499
    .local v20, "plusPreferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lorg/telegram/ui/DialogsActivity;->user_id:I
    invoke-static/range {v23 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2002(Lorg/telegram/ui/DialogsActivity;I)I

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lorg/telegram/ui/DialogsActivity;->chat_id:I
    invoke-static/range {v23 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2102(Lorg/telegram/ui/DialogsActivity;I)I

    .line 501
    long-to-int v15, v12

    .line 502
    .local v15, "lower_part":I
    const/16 v23, 0x20

    shr-long v24, v12, v23

    move-wide/from16 v0, v24

    long-to-int v14, v0

    .line 504
    .local v14, "high_id":I
    if-eqz v15, :cond_e

    .line 505
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v14, v0, :cond_c

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    # setter for: Lorg/telegram/ui/DialogsActivity;->chat_id:I
    invoke-static {v0, v15}, Lorg/telegram/ui/DialogsActivity;->access$2102(Lorg/telegram/ui/DialogsActivity;I)I

    .line 519
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->user_id:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$2000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v23

    if-eqz v23, :cond_10

    .line 520
    const-string/jumbo v23, "dialogsClickOnPic"

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 521
    .local v19, "picClick":I
    const/16 v23, 0x2

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 522
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 523
    .local v7, "args":Landroid/os/Bundle;
    const-string/jumbo v23, "user_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->user_id:I
    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 449
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v14    # "high_id":I
    .end local v15    # "lower_part":I
    .end local v19    # "picClick":I
    .end local v20    # "plusPreferences":Landroid/content/SharedPreferences;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    if-ne v6, v0, :cond_2

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v18

    .line 451
    .local v18, "obj":Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$User;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v23, v18

    .line 452
    check-cast v23, Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v12, v0

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isGlobalSearch(I)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 454
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .local v22, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    move-object/from16 v23, v18

    .line 455
    check-cast v23, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 457
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 459
    .end local v22    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->onlySelect:Z
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    check-cast v18, Lorg/telegram/tgnet/TLRPC$User;

    .end local v18    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v13, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->putRecentSearch(JLorg/telegram/tgnet/TLObject;)V

    goto/16 :goto_1

    .line 462
    .restart local v18    # "obj":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isGlobalSearch(I)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 464
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    move-object/from16 v23, v18

    .line 465
    check-cast v23, Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v9, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 467
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .end local v9    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_7
    move-object/from16 v23, v18

    .line 469
    check-cast v23, Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v23, v0

    if-lez v23, :cond_8

    move-object/from16 v23, v18

    .line 470
    check-cast v23, Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v12, v0

    .line 474
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->onlySelect:Z
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    check-cast v18, Lorg/telegram/tgnet/TLRPC$Chat;

    .end local v18    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v13, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->putRecentSearch(JLorg/telegram/tgnet/TLObject;)V

    goto/16 :goto_1

    .restart local v18    # "obj":Ljava/lang/Object;
    :cond_8
    move-object/from16 v23, v18

    .line 472
    check-cast v23, Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v12

    goto :goto_3

    .line 477
    :cond_9
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    move-object/from16 v23, v18

    .line 478
    check-cast v23, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const/16 v23, 0x20

    shl-long v12, v24, v23

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->onlySelect:Z
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    check-cast v18, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .end local v18    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v13, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->putRecentSearch(JLorg/telegram/tgnet/TLObject;)V

    goto/16 :goto_1

    .line 482
    .restart local v18    # "obj":Ljava/lang/Object;
    :cond_a
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/telegram/messenger/MessageObject;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    move-object/from16 v16, v18

    .line 483
    check-cast v16, Lorg/telegram/messenger/MessageObject;

    .line 484
    .local v16, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v12

    .line 485
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v17

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getLastSearchString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 487
    .end local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_b
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v23

    check-cast v18, Ljava/lang/String;

    .end local v18    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->openSearchField(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 508
    .restart local v14    # "high_id":I
    .restart local v15    # "lower_part":I
    .restart local v20    # "plusPreferences":Landroid/content/SharedPreferences;
    :cond_c
    if-lez v15, :cond_d

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    # setter for: Lorg/telegram/ui/DialogsActivity;->user_id:I
    invoke-static {v0, v15}, Lorg/telegram/ui/DialogsActivity;->access$2002(Lorg/telegram/ui/DialogsActivity;I)I

    goto/16 :goto_2

    .line 510
    :cond_d
    if-gez v15, :cond_3

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    neg-int v0, v15

    move/from16 v24, v0

    # setter for: Lorg/telegram/ui/DialogsActivity;->chat_id:I
    invoke-static/range {v23 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2102(Lorg/telegram/ui/DialogsActivity;I)I

    goto/16 :goto_2

    .line 515
    :cond_e
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v8

    .line 516
    .local v8, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    move/from16 v24, v0

    # setter for: Lorg/telegram/ui/DialogsActivity;->user_id:I
    invoke-static/range {v23 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2002(Lorg/telegram/ui/DialogsActivity;I)I

    goto/16 :goto_2

    .line 526
    .end local v8    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v19    # "picClick":I
    :cond_f
    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 527
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->user_id:I
    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v21

    .line 528
    .local v21, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 529
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 530
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v23

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto/16 :goto_0

    .line 535
    .end local v19    # "picClick":I
    .end local v21    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->chat_id:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v23

    if-eqz v23, :cond_12

    .line 536
    const-string/jumbo v23, "dialogsClickOnGroupPic"

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 537
    .restart local v19    # "picClick":I
    const/16 v23, 0x2

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 538
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->chat_id:I
    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Lorg/telegram/messenger/MessagesController;->loadChatInfo(ILjava/util/concurrent/Semaphore;Z)V

    .line 539
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 540
    .restart local v7    # "args":Landroid/os/Bundle;
    const-string/jumbo v23, "chat_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->chat_id:I
    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 541
    new-instance v11, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v11, v7}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 542
    .local v11, "fragment":Lorg/telegram/ui/ProfileActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 544
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v11    # "fragment":Lorg/telegram/ui/ProfileActivity;
    :cond_11
    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 545
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->chat_id:I
    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    .line 546
    .local v8, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 547
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 548
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v23

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto/16 :goto_0

    .line 556
    .end local v8    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v14    # "high_id":I
    .end local v15    # "lower_part":I
    .end local v19    # "picClick":I
    .end local v20    # "plusPreferences":Landroid/content/SharedPreferences;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->onlySelect:Z
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    # invokes: Lorg/telegram/ui/DialogsActivity;->didSelectResult(JZZ)V
    invoke-static {v0, v12, v13, v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;JZZ)V

    goto/16 :goto_0

    .line 559
    :cond_13
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 560
    .restart local v7    # "args":Landroid/os/Bundle;
    long-to-int v15, v12

    .line 561
    .restart local v15    # "lower_part":I
    const/16 v23, 0x20

    shr-long v24, v12, v23

    move-wide/from16 v0, v24

    long-to-int v14, v0

    .line 562
    .restart local v14    # "high_id":I
    if-eqz v15, :cond_1b

    .line 563
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v14, v0, :cond_18

    .line 564
    const-string/jumbo v23, "chat_id"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 582
    :cond_14
    :goto_4
    if-eqz v17, :cond_1c

    .line 583
    const-string/jumbo v23, "message_id"

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 589
    :cond_15
    :goto_5
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v23

    if-eqz v23, :cond_17

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->openedDialogId:J
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v24

    cmp-long v23, v24, v12

    if-nez v23, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    if-ne v6, v0, :cond_0

    .line 593
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v23

    if-eqz v23, :cond_17

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    # setter for: Lorg/telegram/ui/DialogsActivity;->openedDialogId:J
    invoke-static {v0, v12, v13}, Lorg/telegram/ui/DialogsActivity;->access$2502(Lorg/telegram/ui/DialogsActivity;J)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setOpenedDialogId(J)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x200

    # invokes: Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V
    invoke-static/range {v23 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;I)V

    .line 598
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1d

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 600
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 566
    :cond_18
    if-lez v15, :cond_19

    .line 567
    const-string/jumbo v23, "user_id"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 568
    :cond_19
    if-gez v15, :cond_14

    .line 569
    if-eqz v17, :cond_1a

    .line 570
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    neg-int v0, v15

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    .line 571
    .restart local v8    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v8, :cond_1a

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 572
    const-string/jumbo v23, "migrated_to"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 573
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v15, v0

    .line 576
    .end local v8    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1a
    const-string/jumbo v23, "chat_id"

    neg-int v0, v15

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 580
    :cond_1b
    const-string/jumbo v23, "enc_id"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 585
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$2300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v23

    if-eqz v23, :cond_15

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$2400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    goto/16 :goto_5

    .line 604
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0
.end method