.class Lorg/telegram/ui/DialogsActivity$7$3;
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

.field final synthetic val$isBot:Z

.field final synthetic val$isChat:Z

.field final synthetic val$isEncrypted:Z

.field final synthetic val$isFav:Z

.field final synthetic val$markedAsUnread:Z

.field final synthetic val$pinned:Z

.field final synthetic val$unread:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$7;ZZIZZZZ)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/DialogsActivity$7;

    .prologue
    .line 854
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$7$3;->val$isEncrypted:Z

    iput-boolean p3, p0, Lorg/telegram/ui/DialogsActivity$7$3;->val$isFav:Z

    iput p4, p0, Lorg/telegram/ui/DialogsActivity$7$3;->val$unread:I

    iput-boolean p5, p0, Lorg/telegram/ui/DialogsActivity$7$3;->val$markedAsUnread:Z

    iput-boolean p6, p0, Lorg/telegram/ui/DialogsActivity$7$3;->val$pinned:Z

    iput-boolean p7, p0, Lorg/telegram/ui/DialogsActivity$7$3;->val$isChat:Z

    iput-boolean p8, p0, Lorg/telegram/ui/DialogsActivity$7$3;->val$isBot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 857
    const/4 v3, 0x3

    move/from16 v0, p2

    if-ne v0, v3, :cond_4

    .line 858
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/TabsView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 859
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/TabsView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/TabsView;->forceUpdateTabCounters()V

    .line 861
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x1

    # setter for: Lorg/telegram/ui/DialogsActivity;->updateTabCounters:Z
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$3002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 862
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v13

    .line 863
    .local v13, "muted":Z
    if-nez v13, :cond_2

    .line 864
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v5, v5, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lorg/telegram/ui/Components/AlertsCreator;->createMuteAlert(Landroid/content/Context;J)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 969
    .end local v13    # "muted":Z
    :cond_1
    :goto_0
    return-void

    .line 866
    .restart local v13    # "muted":Z
    :cond_2
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 867
    .local v14, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 868
    .local v12, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify2_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 869
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 870
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 871
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 872
    .local v11, "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v11, :cond_3

    .line 873
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v3, v11, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 875
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(J)V

    goto :goto_0

    .line 877
    .end local v11    # "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v12    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "muted":Z
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    :cond_4
    const/4 v3, 0x4

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    .line 878
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->val$isEncrypted:Z

    if-nez v3, :cond_8

    .line 879
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 880
    .restart local v11    # "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->val$isFav:Z

    if-eqz v3, :cond_7

    .line 881
    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Favorite;->deleteFavorite(Ljava/lang/Long;)V

    .line 882
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 887
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$3100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6

    .line 888
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 889
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 891
    :cond_5
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v3, :cond_6

    .line 892
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->updateTabs()V
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)V

    .line 895
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    # invokes: Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;I)V

    goto/16 :goto_0

    .line 884
    :cond_7
    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Favorite;->addFavorite(Ljava/lang/Long;)V

    .line 885
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 897
    .end local v11    # "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_8
    new-instance v3, Lorg/telegram/ui/DialogsActivity$7$3$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/DialogsActivity$7$3$1;-><init>(Lorg/telegram/ui/DialogsActivity$7$3;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 907
    :cond_9
    const/4 v3, 0x5

    move/from16 v0, p2

    if-ne v0, v3, :cond_b

    .line 908
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->val$unread:I

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->val$markedAsUnread:Z

    if-nez v3, :cond_a

    .line 909
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->markDialogAsUnread()V
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$3300(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_0

    .line 911
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    # invokes: Lorg/telegram/ui/DialogsActivity;->markAsReadDialog(Z)V
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$3400(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_0

    .line 913
    :cond_b
    const/4 v3, 0x6

    move/from16 v0, p2

    if-ne v0, v3, :cond_c

    .line 914
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->addShortcut()V
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$3500(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_0

    .line 919
    :cond_c
    if-nez p2, :cond_e

    .line 920
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/ui/DialogsActivity$7$3;->val$pinned:Z

    if-nez v6, :cond_d

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/MessagesController;->pinDialog(JZLorg/telegram/tgnet/TLRPC$InputPeer;J)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->val$pinned:Z

    if-nez v3, :cond_1

    .line 921
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->smoothScrollToPosition(I)V

    goto/16 :goto_0

    .line 920
    :cond_d
    const/4 v6, 0x0

    goto :goto_2

    .line 924
    :cond_e
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 925
    .local v2, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v3, "AppName"

    const v4, 0x7f07007d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 927
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    neg-long v4, v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    .line 928
    .local v10, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v16

    .line 929
    .local v16, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v10, :cond_f

    iget-object v15, v10, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 930
    .local v15, "title":Ljava/lang/String;
    :goto_3
    invoke-virtual {v2, v15}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 931
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_11

    .line 932
    const-string/jumbo v3, "AreYouSureClearHistory"

    const v4, 0x7f070090

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 940
    :goto_4
    const-string/jumbo v3, "OK"

    const v4, 0x7f0704f5

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/DialogsActivity$7$3$2;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/DialogsActivity$7$3$2;-><init>(Lorg/telegram/ui/DialogsActivity$7$3;I)V

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 965
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f070105

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 966
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 929
    .end local v15    # "title":Ljava/lang/String;
    :cond_f
    if-eqz v16, :cond_10

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_10
    const-string/jumbo v3, "AppName"

    const v4, 0x7f07007d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    .line 934
    .restart local v15    # "title":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/DialogsActivity$7$3;->val$isChat:Z

    if-eqz v3, :cond_12

    .line 935
    const-string/jumbo v3, "AreYouSureDeleteAndExit"

    const v4, 0x7f070093

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_4

    .line 937
    :cond_12
    const-string/jumbo v3, "AreYouSureDeleteThisChat"

    const v4, 0x7f070097

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_4
.end method