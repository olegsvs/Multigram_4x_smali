.class Lorg/telegram/ui/PlusChatsStatsActivity$4;
.super Ljava/lang/Object;
.source "PlusChatsStatsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusChatsStatsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PlusChatsStatsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusChatsStatsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 467
    iput-object p1, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v4, 0x7f0706c2

    const v3, 0x7f070343

    const v2, 0x7f070175

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    # getter for: Lorg/telegram/ui/PlusChatsStatsActivity;->ownGroupsRow:I
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_2

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    # getter for: Lorg/telegram/ui/PlusChatsStatsActivity;->ownGroupsCount:I
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    const-string/jumbo v1, "Groups"

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsOwnGroups:Ljava/util/ArrayList;

    # invokes: Lorg/telegram/ui/PlusChatsStatsActivity;->showChats(Ljava/lang/String;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1500(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 475
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    # getter for: Lorg/telegram/ui/PlusChatsStatsActivity;->ownSuperGroupsRow:I
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_3

    .line 476
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    # getter for: Lorg/telegram/ui/PlusChatsStatsActivity;->ownSuperGroupsCount:I
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    const-string/jumbo v1, "SuperGroups"

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsOwnSuperGroups:Ljava/util/ArrayList;

    # invokes: Lorg/telegram/ui/PlusChatsStatsActivity;->showChats(Ljava/lang/String;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1500(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 477
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    # getter for: Lorg/telegram/ui/PlusChatsStatsActivity;->ownChannelsRow:I
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_4

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    # getter for: Lorg/telegram/ui/PlusChatsStatsActivity;->ownChannelsCount:I
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    const-string/jumbo v1, "Channels"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsOwnChannels:Ljava/util/ArrayList;

    # invokes: Lorg/telegram/ui/PlusChatsStatsActivity;->showChats(Ljava/lang/String;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1500(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 479
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    # getter for: Lorg/telegram/ui/PlusChatsStatsActivity;->adminGroupsRow:I
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_5

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    # getter for: Lorg/telegram/ui/PlusChatsStatsActivity;->adminGroupsCount:I
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    const-string/jumbo v1, "Groups"

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsAdminGroups:Ljava/util/ArrayList;

    # invokes: Lorg/telegram/ui/PlusChatsStatsActivity;->showChats(Ljava/lang/String;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1500(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 481
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    # getter for: Lorg/telegram/ui/PlusChatsStatsActivity;->adminSuperGroupsRow:I
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_6

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    # getter for: Lorg/telegram/ui/PlusChatsStatsActivity;->adminSuperGroupsCount:I
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    const-string/jumbo v1, "SuperGroups"

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsAdminSuperGroups:Ljava/util/ArrayList;

    # invokes: Lorg/telegram/ui/PlusChatsStatsActivity;->showChats(Ljava/lang/String;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1500(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 483
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    # getter for: Lorg/telegram/ui/PlusChatsStatsActivity;->adminChannelsRow:I
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    # getter for: Lorg/telegram/ui/PlusChatsStatsActivity;->adminChannelsCount:I
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    const-string/jumbo v1, "Channels"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsAdminChannels:Ljava/util/ArrayList;

    # invokes: Lorg/telegram/ui/PlusChatsStatsActivity;->showChats(Ljava/lang/String;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1500(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 485
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    # getter for: Lorg/telegram/ui/PlusChatsStatsActivity;->totalSecretsRow:I
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_8

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    # getter for: Lorg/telegram/ui/PlusChatsStatsActivity;->secretsCount:I
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$500(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    const-string/jumbo v1, "SecretChat"

    const v2, 0x7f070631

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsSecrets:Ljava/util/ArrayList;

    # invokes: Lorg/telegram/ui/PlusChatsStatsActivity;->showSecrets(Ljava/lang/String;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2200(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 487
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    # getter for: Lorg/telegram/ui/PlusChatsStatsActivity;->totalOtherRow:I
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    # getter for: Lorg/telegram/ui/PlusChatsStatsActivity;->otherCount:I
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    const-string/jumbo v1, "ReportChatOther"

    const v2, 0x7f0705ca

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    # getter for: Lorg/telegram/ui/PlusChatsStatsActivity;->other:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$400(Lorg/telegram/ui/PlusChatsStatsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    # invokes: Lorg/telegram/ui/PlusChatsStatsActivity;->showOther(Ljava/lang/String;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2500(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method