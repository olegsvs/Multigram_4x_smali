.class Lorg/telegram/ui/DialogsActivity$7$2;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$7;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$7;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic val$isFav:Z

.field final synthetic val$markedAsUnread:Z

.field final synthetic val$pinned:Z

.field final synthetic val$unread:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$7;ZIZLorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/DialogsActivity$7;

    .prologue
    .line 703
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$isFav:Z

    iput p3, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$unread:I

    iput-boolean p4, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$markedAsUnread:Z

    iput-object p5, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-boolean p6, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$pinned:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    const v3, 0x7f0704f5

    const v2, 0x7f07007d

    const/4 v4, 0x1

    const/4 v12, 0x0

    .line 706
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    .line 707
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/TabsView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/TabsView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TabsView;->forceUpdateTabCounters()V

    .line 710
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # setter for: Lorg/telegram/ui/DialogsActivity;->updateTabCounters:Z
    invoke-static {v1, v4}, Lorg/telegram/ui/DialogsActivity;->access$3002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 711
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v10

    .line 712
    .local v10, "muted":Z
    if-nez v10, :cond_2

    .line 713
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/Components/AlertsCreator;->createMuteAlert(Landroid/content/Context;J)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 807
    .end local v10    # "muted":Z
    :cond_1
    :goto_0
    return-void

    .line 715
    .restart local v10    # "muted":Z
    :cond_2
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "Notifications"

    invoke-virtual {v1, v2, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 716
    .local v11, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 717
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notify2_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 718
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 719
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 720
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 721
    .local v8, "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v8, :cond_3

    .line 722
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v1, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 724
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(J)V

    goto :goto_0

    .line 726
    .end local v8    # "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "muted":Z
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    :cond_4
    const/4 v1, 0x4

    if-ne p2, v1, :cond_9

    .line 727
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 728
    .restart local v8    # "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$isFav:Z

    if-eqz v1, :cond_8

    .line 729
    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Favorite;->deleteFavorite(Ljava/lang/Long;)V

    .line 730
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 735
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    .line 736
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 737
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 739
    :cond_5
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v1, :cond_6

    .line 740
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->updateTabs()V
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)V

    .line 743
    :cond_6
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v1, :cond_7

    .line 744
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # setter for: Lorg/telegram/ui/DialogsActivity;->updateTabCounters:Z
    invoke-static {v1, v4}, Lorg/telegram/ui/DialogsActivity;->access$3002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 746
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V
    invoke-static {v1, v12}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;I)V

    goto/16 :goto_0

    .line 732
    :cond_8
    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Favorite;->addFavorite(Ljava/lang/Long;)V

    .line 733
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 747
    .end local v8    # "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_9
    const/4 v1, 0x5

    if-ne p2, v1, :cond_b

    .line 748
    iget v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$unread:I

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$markedAsUnread:Z

    if-nez v1, :cond_a

    .line 749
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->markDialogAsUnread()V
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3300(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_0

    .line 751
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->markAsReadDialog(Z)V
    invoke-static {v1, v12}, Lorg/telegram/ui/DialogsActivity;->access$3400(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_0

    .line 753
    :cond_b
    const/4 v1, 0x6

    if-ne p2, v1, :cond_c

    .line 754
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->addShortcut()V
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3500(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_0

    .line 758
    :cond_c
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 760
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 761
    if-nez p2, :cond_f

    .line 762
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    iget-boolean v6, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$pinned:Z

    if-nez v6, :cond_e

    :goto_3
    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->pinDialog(JZLorg/telegram/tgnet/TLRPC$InputPeer;J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$pinned:Z

    if-nez v1, :cond_1

    .line 763
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/RecyclerListView;->smoothScrollToPosition(I)V

    goto/16 :goto_0

    .line 760
    :cond_d
    const-string/jumbo v1, "AppName"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_e
    move v4, v12

    .line 762
    goto :goto_3

    .line 767
    :cond_f
    const-string/jumbo v1, "AppName"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 768
    if-ne p2, v4, :cond_11

    .line 769
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_10

    .line 770
    const-string/jumbo v1, "AreYouSureClearHistorySuper"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 774
    :goto_4
    const-string/jumbo v1, "OK"

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$7$2$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivity$7$2$1;-><init>(Lorg/telegram/ui/DialogsActivity$7$2;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 804
    :goto_5
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f070105

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 805
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 772
    :cond_10
    const-string/jumbo v1, "AreYouSureClearHistoryChannel"

    const v2, 0x7f070091

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_4

    .line 781
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_13

    .line 782
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_12

    .line 783
    const-string/jumbo v1, "MegaLeaveAlert"

    const v2, 0x7f07040c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 794
    :goto_6
    const-string/jumbo v1, "OK"

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$7$2$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivity$7$2$2;-><init>(Lorg/telegram/ui/DialogsActivity$7$2;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_5

    .line 785
    :cond_12
    const-string/jumbo v1, "MegaDeleteAlert"

    const v2, 0x7f07040a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_6

    .line 788
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_15

    .line 789
    :cond_14
    const-string/jumbo v1, "ChannelLeaveAlert"

    const v2, 0x7f07013a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_6

    .line 791
    :cond_15
    const-string/jumbo v1, "ChannelDeleteAlert"

    const v2, 0x7f070130

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_6
.end method
