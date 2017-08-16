.class public Lorg/telegram/ui/ChannelEditActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChannelEditActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChannelEditActivity$ListAdapter;,
        Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;
    }
.end annotation


# static fields
.field private static final search_button:I = 0x1


# instance fields
.field private blockedUsersRow:I

.field private chat_id:I

.field private checkTextView:Landroid/widget/TextView;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private eventLogRow:I

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private infoRow:I

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listViewAdapter:Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

.field private loadMoreMembersRow:I

.field private loadingUsers:Z

.field private managementRow:I

.field private membersEndRow:I

.field private membersSection2Row:I

.field private membersSectionRow:I

.field private membersStartRow:I

.field private participantsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private rowCount:I

.field private searchListViewAdapter:Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

.field private searchWas:Z

.field private searching:Z

.field private sortedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private usersEndReached:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->participantsMap:Ljava/util/HashMap;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    .line 100
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->chat_id:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->blockedUsersRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChannelEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->managementRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChannelEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->eventLogRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChannelEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .param p3, "x3"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelEditActivity;->createMenuForParticipant(Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/ChannelEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditActivity;->usersEndReached:Z

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ChannelEditActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->participantsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/ChannelEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditActivity;->loadingUsers:Z

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/ChannelEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditActivity;->searching:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ChannelEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->membersSectionRow:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ChannelEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ChannelEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->membersSection2Row:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ChannelEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->loadMoreMembersRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->searchListViewAdapter:Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/ChannelEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ChannelEditActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->listViewAdapter:Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->membersStartRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->membersEndRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelEditActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->sortedUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private createMenuForParticipant(Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Z)Z
    .locals 13
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    .param p2, "channelParticipant"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .param p3, "resultOnly"    # Z

    .prologue
    .line 440
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 441
    const/4 v0, 0x0

    .line 564
    :goto_0
    return v0

    .line 443
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v9

    .line 445
    .local v9, "currentUserId":I
    if-eqz p2, :cond_6

    .line 446
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    if-ne v9, v0, :cond_1

    .line 447
    const/4 v0, 0x0

    goto :goto_0

    .line 449
    :cond_1
    iget v3, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    .line 450
    .local v3, "uid":I
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->participantsMap:Ljava/util/HashMap;

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "user":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    .line 451
    .restart local p1    # "user":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    if-eqz p1, :cond_2

    .line 452
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 463
    :cond_2
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 464
    .local v11, "u":Lorg/telegram/tgnet/TLRPC$User;
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    if-nez v0, :cond_3

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;

    if-eqz v0, :cond_8

    :cond_3
    const/4 v6, 0x1

    .line 465
    .local v6, "allowSetAdmin":Z
    :goto_2
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v0, :cond_4

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v0, :cond_5

    :cond_4
    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    if-eqz v0, :cond_9

    :cond_5
    const/4 v8, 0x1

    .line 469
    .local v8, "canEditAdmin":Z
    :goto_3
    if-eqz p3, :cond_a

    .line 470
    const/4 v10, 0x0

    .line 471
    .local v10, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 476
    .local v2, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_4
    if-eqz v6, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 477
    if-eqz p3, :cond_b

    .line 478
    const/4 v0, 0x1

    goto :goto_0

    .line 455
    .end local v2    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "uid":I
    .end local v6    # "allowSetAdmin":Z
    .end local v8    # "canEditAdmin":Z
    .end local v10    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 456
    const/4 v0, 0x0

    goto :goto_0

    .line 458
    :cond_7
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->user_id:I

    .line 459
    .restart local v3    # "uid":I
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    goto :goto_1

    .line 464
    .restart local v11    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 465
    .restart local v6    # "allowSetAdmin":Z
    :cond_9
    const/4 v8, 0x0

    goto :goto_3

    .line 473
    .restart local v8    # "canEditAdmin":Z
    :cond_a
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .restart local v10    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_4

    .line 480
    :cond_b
    const-string/jumbo v0, "SetAsAdmin"

    const v1, 0x7f070667

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v8, :cond_e

    .line 484
    if-eqz p3, :cond_d

    .line 485
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 487
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_10

    .line 488
    const-string/jumbo v0, "KickFromSupergroup"

    const v1, 0x7f0703ad

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    const-string/jumbo v0, "KickFromGroup"

    const v1, 0x7f0703ac

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_e
    :goto_5
    if-eqz v10, :cond_f

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 498
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 493
    :cond_10
    const-string/jumbo v0, "ChannelRemoveUser"

    const v1, 0x7f070163

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 500
    :cond_11
    move-object v4, p2

    .line 501
    .local v4, "channelParticipantFinal":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    move-object v5, p1

    .line 502
    .local v5, "userFinal":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    new-instance v7, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 503
    .local v7, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Ljava/lang/CharSequence;

    new-instance v0, Lorg/telegram/ui/ChannelEditActivity$8;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChannelEditActivity$8;-><init>(Lorg/telegram/ui/ChannelEditActivity;Ljava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;)V

    invoke-virtual {v7, v12, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 563
    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelEditActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 564
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private fetchUsersFromChannelInfo()V
    .locals 4

    .prologue
    .line 390
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v2, :cond_0

    .line 391
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 392
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 393
    .local v1, "chatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->participantsMap:Ljava/util/HashMap;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    .end local v0    # "a":I
    .end local v1    # "chatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_0
    return-void
.end method

.method private getChannelParticipants(Z)V
    .locals 5
    .param p1, "reload"    # Z

    .prologue
    const/4 v3, 0x0

    .line 334
    iget-boolean v4, p0, Lorg/telegram/ui/ChannelEditActivity;->loadingUsers:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->participantsMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v4, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/telegram/ui/ChannelEditActivity;->loadingUsers:Z

    .line 338
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->participantsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    const/16 v0, 0x12c

    .line 340
    .local v0, "delay":I
    :goto_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 341
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    iget v4, p0, Lorg/telegram/ui/ChannelEditActivity;->chat_id:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 342
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 343
    if-eqz p1, :cond_3

    :goto_2
    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 344
    const/16 v3, 0xc8

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 345
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelEditActivity$7;

    invoke-direct {v4, p0, v1, v0}, Lorg/telegram/ui/ChannelEditActivity$7;-><init>(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;I)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 381
    .local v2, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ChannelEditActivity;->classGuid:I

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .end local v0    # "delay":I
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    .end local v2    # "reqId":I
    :cond_2
    move v0, v3

    .line 338
    goto :goto_1

    .line 343
    .restart local v0    # "delay":I
    .restart local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->participantsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    goto :goto_2
.end method

.method private updateRowsIds()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 399
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canEditInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoRow:I

    .line 405
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelEditActivity;->eventLogRow:I

    .line 406
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelEditActivity;->managementRow:I

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_1

    .line 408
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelEditActivity;->blockedUsersRow:I

    .line 412
    :goto_1
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelEditActivity;->membersSectionRow:I

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 414
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelEditActivity;->membersStartRow:I

    .line 415
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    .line 416
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelEditActivity;->membersEndRow:I

    .line 417
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelEditActivity;->membersSection2Row:I

    .line 418
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditActivity;->usersEndReached:Z

    if-nez v0, :cond_2

    .line 419
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelEditActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelEditActivity;->loadMoreMembersRow:I

    .line 437
    :goto_2
    return-void

    .line 403
    :cond_0
    iput v2, p0, Lorg/telegram/ui/ChannelEditActivity;->infoRow:I

    goto :goto_0

    .line 410
    :cond_1
    iput v2, p0, Lorg/telegram/ui/ChannelEditActivity;->blockedUsersRow:I

    goto :goto_1

    .line 421
    :cond_2
    iput v2, p0, Lorg/telegram/ui/ChannelEditActivity;->loadMoreMembersRow:I

    goto :goto_2

    .line 424
    :cond_3
    iput v2, p0, Lorg/telegram/ui/ChannelEditActivity;->membersStartRow:I

    .line 425
    iput v2, p0, Lorg/telegram/ui/ChannelEditActivity;->membersEndRow:I

    .line 426
    iput v2, p0, Lorg/telegram/ui/ChannelEditActivity;->loadMoreMembersRow:I

    .line 427
    iput v2, p0, Lorg/telegram/ui/ChannelEditActivity;->membersSection2Row:I

    goto :goto_2
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 144
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createProfileResources(Landroid/content/Context;)V

    .line 146
    iput-boolean v8, p0, Lorg/telegram/ui/ChannelEditActivity;->searching:Z

    .line 147
    iput-boolean v8, p0, Lorg/telegram/ui/ChannelEditActivity;->searchWas:Z

    .line 149
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f0200bc

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 150
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 151
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_0

    .line 152
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "ManageGroup"

    const v6, 0x7f0703fd

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/ChannelEditActivity$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChannelEditActivity$2;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 168
    new-instance v4, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;-><init>(Lorg/telegram/ui/ChannelEditActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->searchListViewAdapter:Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    .line 169
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 170
    .local v2, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v4, 0x7f0200c6

    invoke-virtual {v2, v7, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChannelEditActivity$3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChannelEditActivity$3;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    .line 205
    .local v3, "searchItem":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v4

    const-string/jumbo v5, "Search"

    const v6, 0x7f07061c

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 207
    new-instance v4, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;-><init>(Lorg/telegram/ui/ChannelEditActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->listViewAdapter:Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    .line 208
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    .line 209
    iget-object v5, p0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_1

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    :goto_1
    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 210
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    .line 212
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v0, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    .line 213
    .local v0, "emptyView":Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 214
    const-string/jumbo v4, "NoResult"

    const v5, 0x7f070483

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 216
    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v9, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    new-instance v4, Lorg/telegram/ui/ChannelEditActivity$4;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ChannelEditActivity$4;-><init>(Lorg/telegram/ui/ChannelEditActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 224
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 225
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 226
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v5, p1, v7, v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 227
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v5, 0x33

    invoke-static {v9, v9, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/ChannelEditActivity;->listViewAdapter:Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 230
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/ChannelEditActivity$5;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChannelEditActivity$5;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 273
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/ChannelEditActivity$6;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChannelEditActivity$6;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 292
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    return-object v4

    .line 154
    .end local v0    # "emptyView":Lorg/telegram/ui/Components/EmptyTextProgressView;
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v2    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .end local v3    # "searchItem":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "ManageChannel"

    const v6, 0x7f0703fb

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 209
    .restart local v2    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .restart local v3    # "searchItem":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_1
    const-string/jumbo v4, "windowBackgroundGray"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_1
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 298
    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    if-ne p1, v4, :cond_5

    .line 299
    aget-object v1, p2, v2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 300
    .local v1, "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    iget v6, p0, Lorg/telegram/ui/ChannelEditActivity;->chat_id:I

    if-ne v4, v6, :cond_5

    .line 301
    const/4 v4, 0x2

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 302
    .local v0, "byChannelUsers":Z
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v4, :cond_0

    .line 303
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v4, :cond_0

    .line 304
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 307
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v4, :cond_1

    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v4, :cond_1

    move v2, v5

    .line 308
    .local v2, "loadChannelParticipants":Z
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 309
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditActivity;->fetchUsersFromChannelInfo()V

    .line 310
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditActivity;->updateRowsIds()V

    .line 311
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->listViewAdapter:Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    if-eqz v4, :cond_2

    .line 312
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->listViewAdapter:Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->notifyDataSetChanged()V

    .line 314
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v6, p0, Lorg/telegram/ui/ChannelEditActivity;->chat_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 315
    .local v3, "newChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_3

    .line 316
    iput-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 318
    :cond_3
    if-nez v2, :cond_4

    if-nez v0, :cond_5

    .line 319
    :cond_4
    invoke-direct {p0, v5}, Lorg/telegram/ui/ChannelEditActivity;->getChannelParticipants(Z)V

    .line 323
    .end local v0    # "byChannelUsers":Z
    .end local v1    # "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    .end local v2    # "loadChannelParticipants":Z
    .end local v3    # "newChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_5
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 12

    .prologue
    .line 819
    new-instance v9, Lorg/telegram/ui/ChannelEditActivity$9;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChannelEditActivity$9;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    .line 831
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x1e

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSubmenuBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSubmenuItem"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_actionBarSelectorBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGreenText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteRedText5"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "imageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "nameTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "statusColor"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText"

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "statusOnlineColor"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueText"

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_text"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundRed"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundOrange"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundViolet"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundGreen"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundCyan"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundBlue"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundPink"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "progressBar"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "progressCircle"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    return-object v10
.end method

.method public onFragmentCreate()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelEditActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "chat_id"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/ChannelEditActivity;->chat_id:I

    .line 105
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/ChannelEditActivity;->chat_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 106
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v4, :cond_0

    .line 107
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 108
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChannelEditActivity$1;

    invoke-direct {v5, p0, v1}, Lorg/telegram/ui/ChannelEditActivity$1;-><init>(Lorg/telegram/ui/ChannelEditActivity;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 116
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_1

    .line 121
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 127
    .end local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_0
    invoke-direct {p0, v3}, Lorg/telegram/ui/ChannelEditActivity;->getChannelParticipants(Z)V

    .line 128
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v2, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->sortedUsers:Ljava/util/ArrayList;

    .line 131
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditActivity;->updateRowsIds()V

    move v2, v3

    .line 133
    :cond_1
    return v2

    .line 117
    .restart local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 139
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 140
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->listViewAdapter:Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->listViewAdapter:Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->notifyDataSetChanged()V

    .line 331
    :cond_0
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0
    .param p1, "chatInfo"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 385
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 386
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditActivity;->fetchUsersFromChannelInfo()V

    .line 387
    return-void
.end method
