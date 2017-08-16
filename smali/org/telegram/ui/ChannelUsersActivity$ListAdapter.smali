.class Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChannelUsersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelUsersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ChannelUsersActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChannelUsersActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1300
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1301
    iput-object p2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 1302
    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, -0x1

    .line 1546
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$3500(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$3500(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsEndRow:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$3600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1547
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$1600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$3500(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1551
    :goto_0
    return-object v0

    .line 1548
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants2StartRow:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$3700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants2StartRow:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$3700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants2EndRow:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$3800(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1549
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants2:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$2200(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants2StartRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$3700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    goto :goto_0

    .line 1551
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$2100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->firstLoaded:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$2000(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1313
    const/4 v0, 0x0

    .line 1315
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$3000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 1527
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->addNewRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->addNew2Row:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$900(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 1528
    :cond_0
    const/4 v0, 0x2

    .line 1542
    :cond_1
    :goto_0
    return v0

    .line 1529
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$3500(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-lt p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsEndRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$3600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants2StartRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$3700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-lt p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants2EndRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$3800(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 1531
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->addNewSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$3900(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->changeAddSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$4000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsDividerRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$4100(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 1532
    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    .line 1533
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$3100(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_7

    .line 1534
    const/4 v0, 0x1

    goto :goto_0

    .line 1535
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->changeAddHeaderRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$3400(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->restricted1SectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$3200(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->restricted2SectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$3300(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_9

    .line 1536
    :cond_8
    const/4 v0, 0x5

    goto :goto_0

    .line 1537
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->changeAddRadio1Row:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$1000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->changeAddRadio2Row:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$1100(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_b

    .line 1538
    :cond_a
    const/4 v0, 0x6

    goto :goto_0

    .line 1539
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->blockedEmptyRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$4200(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1540
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1306
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 1307
    .local v0, "type":I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 18
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 1408
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 1516
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1410
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v11, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 1411
    .local v11, "userCell":Lorg/telegram/ui/Cells/ManageChatUserCell;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setTag(Ljava/lang/Object;)V

    .line 1412
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-result-object v5

    .line 1413
    .local v5, "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget v13, v5, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    .line 1414
    .local v9, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v9, :cond_0

    .line 1415
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    if-nez v12, :cond_2

    .line 1416
    const/4 v8, 0x0

    .line 1417
    .local v8, "role":Ljava/lang/String;
    instance-of v12, v5, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;

    if-eqz v12, :cond_1

    .line 1418
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget v13, v5, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->kicked_by:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    .line 1419
    .local v10, "user1":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v10, :cond_1

    .line 1420
    const-string/jumbo v12, "UserRestrictionsBy"

    const v13, 0x7f070722

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1423
    .end local v10    # "user1":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    const/4 v12, 0x0

    invoke-virtual {v11, v9, v12, v8}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1424
    .end local v8    # "role":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 1425
    const/4 v8, 0x0

    .line 1426
    .restart local v8    # "role":Ljava/lang/String;
    instance-of v12, v5, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v12, :cond_3

    instance-of v12, v5, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;

    if-eqz v12, :cond_5

    .line 1427
    :cond_3
    const-string/jumbo v12, "ChannelCreator"

    const v13, 0x7f07012e

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1434
    :cond_4
    :goto_1
    const/4 v12, 0x0

    invoke-virtual {v11, v9, v12, v8}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1428
    :cond_5
    instance-of v12, v5, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-eqz v12, :cond_4

    .line 1429
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget v13, v5, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->promoted_by:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    .line 1430
    .restart local v10    # "user1":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v10, :cond_4

    .line 1431
    const-string/jumbo v12, "EditAdminPromotedBy"

    const v13, 0x7f070246

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 1435
    .end local v8    # "role":Ljava/lang/String;
    .end local v10    # "user1":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 1436
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v12, v13}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1441
    .end local v5    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v9    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v11    # "userCell":Lorg/telegram/ui/Cells/ManageChatUserCell;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1442
    .local v6, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsInfoRow:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$3100(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 1443
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    if-nez v12, :cond_a

    .line 1444
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$1400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1445
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$1400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v12, :cond_7

    .line 1446
    const-string/jumbo v12, "%1$s\n\n%2$s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "NoBlockedGroup"

    const v16, 0x7f07046a

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string/jumbo v15, "UnbanText"

    const v16, 0x7f0706fe

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1457
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0200ad

    const-string/jumbo v14, "windowBackgroundGrayShadow"

    invoke-static {v12, v13, v14}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1448
    :cond_7
    const-string/jumbo v12, "%1$s\n\n%2$s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "NoBlockedChannel"

    const v16, 0x7f070469

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string/jumbo v15, "UnbanText"

    const v16, 0x7f0706fe

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1451
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$1400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v12, :cond_9

    .line 1452
    const-string/jumbo v12, "NoBlockedGroup"

    const v13, 0x7f07046a

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1454
    :cond_9
    const-string/jumbo v12, "NoBlockedChannel"

    const v13, 0x7f070469

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1458
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    .line 1459
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->addNewRow:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_c

    .line 1460
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$1400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v12, :cond_b

    .line 1461
    const-string/jumbo v12, "MegaAdminsInfo"

    const v13, 0x7f070409

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1465
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0200ad

    const-string/jumbo v14, "windowBackgroundGrayShadow"

    invoke-static {v12, v13, v14}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1463
    :cond_b
    const-string/jumbo v12, "ChannelAdminsInfo"

    const v13, 0x7f070122

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1467
    :cond_c
    const-string/jumbo v12, ""

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0200ad

    const-string/jumbo v14, "windowBackgroundGrayShadow"

    invoke-static {v12, v13, v14}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1470
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 1471
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$1400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->selectType:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$1300(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    if-eqz v12, :cond_f

    .line 1472
    :cond_e
    const-string/jumbo v12, ""

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1476
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0200ad

    const-string/jumbo v14, "windowBackgroundGrayShadow"

    invoke-static {v12, v13, v14}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1474
    :cond_f
    const-string/jumbo v12, "ChannelMembersInfo"

    const v13, 0x7f070140

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1481
    .end local v6    # "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/ManageChatTextCell;

    .line 1482
    .local v2, "actionCell":Lorg/telegram/ui/Cells/ManageChatTextCell;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->addNewRow:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_12

    .line 1483
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    if-nez v12, :cond_10

    .line 1484
    const-string/jumbo v12, "ChannelBlockUser"

    const v13, 0x7f070127

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const v14, 0x7f0200b2

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v13, v14, v15}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1485
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_11

    .line 1486
    const-string/jumbo v12, "ChannelAddAdmin"

    const v13, 0x7f07011a

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const v14, 0x7f0200b0

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v13, v14, v15}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1487
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 1488
    const-string/jumbo v12, "AddMember"

    const v13, 0x7f070051

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const v14, 0x7f020165

    const/4 v15, 0x1

    invoke-virtual {v2, v12, v13, v14, v15}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1490
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->addNew2Row:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$900(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 1491
    const-string/jumbo v12, "ChannelInviteViaLink"

    const v13, 0x7f070136

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const v14, 0x7f0201cb

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v13, v14, v15}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1495
    .end local v2    # "actionCell":Lorg/telegram/ui/Cells/ManageChatTextCell;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1496
    .local v4, "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->restricted1SectionRow:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$3200(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_13

    .line 1497
    const-string/jumbo v12, "ChannelRestrictedUsers"

    const v13, 0x7f070165

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1498
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->restricted2SectionRow:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$3300(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_14

    .line 1499
    const-string/jumbo v12, "ChannelBlockedUsers"

    const v13, 0x7f070128

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1500
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->changeAddHeaderRow:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$3400(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 1501
    const-string/jumbo v12, "WhoCanAddMembers"

    const v13, 0x7f070779

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1505
    .end local v4    # "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v7, Lorg/telegram/ui/Cells/RadioCell;

    .line 1506
    .local v7, "radioCell":Lorg/telegram/ui/Cells/RadioCell;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->chatId:I
    invoke-static {v13}, Lorg/telegram/ui/ChannelUsersActivity;->access$800(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 1507
    .local v3, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->changeAddRadio1Row:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$1000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_16

    .line 1508
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/telegram/ui/Cells/RadioCell;->setTag(Ljava/lang/Object;)V

    .line 1509
    const-string/jumbo v12, "WhoCanAddMembersAllMembers"

    const v13, 0x7f07077b

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    if-eqz v3, :cond_15

    iget-boolean v12, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-eqz v12, :cond_15

    const/4 v12, 0x1

    :goto_5
    const/4 v14, 0x1

    invoke-virtual {v7, v13, v12, v14}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_15
    const/4 v12, 0x0

    goto :goto_5

    .line 1510
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->changeAddRadio2Row:I
    invoke-static {v12}, Lorg/telegram/ui/ChannelUsersActivity;->access$1100(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 1511
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/telegram/ui/Cells/RadioCell;->setTag(Ljava/lang/Object;)V

    .line 1512
    const-string/jumbo v12, "WhoCanAddMembersAdmins"

    const v13, 0x7f07077a

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    if-eqz v3, :cond_17

    iget-boolean v12, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-nez v12, :cond_17

    const/4 v12, 0x1

    :goto_6
    const/4 v14, 0x0

    invoke-virtual {v7, v13, v12, v14}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_17
    const/4 v12, 0x0

    goto :goto_6

    .line 1408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 12
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 1321
    packed-switch p2, :pswitch_data_0

    .line 1399
    new-instance v11, Lorg/telegram/ui/Cells/RadioCell;

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    .line 1400
    .local v11, "view":Landroid/view/View;
    const-string/jumbo v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1403
    :cond_0
    :goto_0
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 1323
    .end local v11    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v11, Lorg/telegram/ui/Cells/ManageChatUserCell;

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->selectType:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$1300(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-direct {v11, v2, v0, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IZ)V

    .line 1324
    .restart local v11    # "view":Landroid/view/View;
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_4

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    :goto_3
    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1325
    const-string/jumbo v0, "Profile"

    invoke-virtual {v11, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1326
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1

    move-object v0, v11

    .line 1327
    check-cast v0, Lorg/telegram/ui/Cells/ManageChatUserCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->profileRowTitleColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setNameColor(I)V

    move-object v0, v11

    .line 1328
    check-cast v0, Lorg/telegram/ui/Cells/ManageChatUserCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->profileRowStatusColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setStatusColor(I)V

    :cond_1
    move-object v0, v11

    .line 1330
    check-cast v0, Lorg/telegram/ui/Cells/ManageChatUserCell;

    new-instance v1, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setDelegate(Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;)V

    goto :goto_0

    .line 1323
    .end local v11    # "view":Landroid/view/View;
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 1324
    .restart local v11    # "view":Landroid/view/View;
    :cond_4
    const-string/jumbo v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    .line 1339
    .end local v11    # "view":Landroid/view/View;
    :pswitch_1
    new-instance v11, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 1340
    .restart local v11    # "view":Landroid/view/View;
    goto :goto_0

    .line 1342
    .end local v11    # "view":Landroid/view/View;
    :pswitch_2
    new-instance v11, Lorg/telegram/ui/Cells/ManageChatTextCell;

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Cells/ManageChatTextCell;-><init>(Landroid/content/Context;)V

    .line 1343
    .restart local v11    # "view":Landroid/view/View;
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_5

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    :goto_4
    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1344
    const-string/jumbo v0, "Profile"

    invoke-virtual {v11, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1345
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_0

    move-object v0, v11

    .line 1346
    check-cast v0, Lorg/telegram/ui/Cells/ManageChatTextCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->profileRowTitleColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setTextColor(I)V

    goto/16 :goto_0

    .line 1343
    :cond_5
    const-string/jumbo v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    .line 1350
    .end local v11    # "view":Landroid/view/View;
    :pswitch_3
    new-instance v11, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 1351
    .restart local v11    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 1353
    .end local v11    # "view":Landroid/view/View;
    :pswitch_4
    new-instance v11, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter$2;

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v11, p0, v0}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter$2;-><init>(Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;Landroid/content/Context;)V

    .restart local v11    # "view":Landroid/view/View;
    move-object v7, v11

    .line 1359
    check-cast v7, Landroid/widget/FrameLayout;

    .line 1360
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0200ad

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1362
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1363
    .local v9, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1364
    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x11

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1366
    new-instance v8, Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1367
    .local v8, "imageView":Landroid/widget/ImageView;
    const v0, 0x7f0200b1

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1368
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1369
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v1, "emptyListPlaceholder"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1370
    const/4 v0, -0x2

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1372
    new-instance v10, Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1373
    .local v10, "textView":Landroid/widget/TextView;
    const-string/jumbo v0, "NoBlockedUsers"

    const v1, 0x7f07046b

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    const-string/jumbo v0, "emptyListPlaceholder"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1375
    const/4 v0, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1376
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1377
    const-string/jumbo v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1378
    const/4 v0, -0x2

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1380
    new-instance v10, Landroid/widget/TextView;

    .end local v10    # "textView":Landroid/widget/TextView;
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1381
    .restart local v10    # "textView":Landroid/widget/TextView;
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$1400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_6

    .line 1382
    const-string/jumbo v0, "NoBlockedGroup"

    const v1, 0x7f07046a

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    :goto_5
    const-string/jumbo v0, "emptyListPlaceholder"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1387
    const/4 v0, 0x1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1388
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1389
    const/4 v0, -0x2

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1391
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1384
    :cond_6
    const-string/jumbo v0, "NoBlockedChannel"

    const v1, 0x7f070469

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1394
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    .end local v9    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v10    # "textView":Landroid/widget/TextView;
    .end local v11    # "view":Landroid/view/View;
    :pswitch_5
    new-instance v11, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1395
    .restart local v11    # "view":Landroid/view/View;
    const-string/jumbo v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1520
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;->recycle()V

    .line 1523
    :cond_0
    return-void
.end method
