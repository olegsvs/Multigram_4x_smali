.class Lorg/telegram/ui/ProfileActivity$8$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$8;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$8;

.field final synthetic val$did:J


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$8;J)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ProfileActivity$8;

    .prologue
    .line 822
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$8$1;->this$1:Lorg/telegram/ui/ProfileActivity$8;

    iput-wide p2, p0, Lorg/telegram/ui/ProfileActivity$8$1;->val$did:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 825
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 826
    .local v3, "i":I
    if-nez v3, :cond_1

    .line 827
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->Notifications:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 828
    .local v6, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 829
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notify2_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lorg/telegram/ui/ProfileActivity$8$1;->val$did:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 830
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    iget-wide v10, p0, Lorg/telegram/ui/ProfileActivity$8$1;->val$did:J

    const-wide/16 v12, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 831
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 832
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v10, p0, Lorg/telegram/ui/ProfileActivity$8$1;->val$did:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 833
    .local v1, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v1, :cond_0

    .line 834
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 836
    :cond_0
    iget-wide v8, p0, Lorg/telegram/ui/ProfileActivity$8$1;->val$did:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(J)V

    .line 871
    .end local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    iget-object v8, p0, Lorg/telegram/ui/ProfileActivity$8$1;->this$1:Lorg/telegram/ui/ProfileActivity$8;

    iget-object v8, v8, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$2300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$8$1;->this$1:Lorg/telegram/ui/ProfileActivity$8;

    iget-object v9, v9, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyItemChanged(I)V

    .line 872
    iget-object v8, p0, Lorg/telegram/ui/ProfileActivity$8$1;->this$1:Lorg/telegram/ui/ProfileActivity$8;

    iget-object v8, v8, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ProfileActivity;->dismissCurrentDialig()V

    .line 873
    return-void

    .line 837
    :cond_1
    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    .line 838
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 839
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v8, "dialog_id"

    iget-wide v10, p0, Lorg/telegram/ui/ProfileActivity$8$1;->val$did:J

    invoke-virtual {v0, v8, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 840
    iget-object v8, p0, Lorg/telegram/ui/ProfileActivity$8$1;->this$1:Lorg/telegram/ui/ProfileActivity$8;

    iget-object v8, v8, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v9, Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileNotificationsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 842
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    .line 843
    .local v7, "untilTime":I
    const/4 v8, 0x1

    if-ne v3, v8, :cond_5

    .line 844
    add-int/lit16 v7, v7, 0xe10

    .line 850
    :cond_3
    :goto_1
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->Notifications:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 851
    .restart local v6    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 853
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v8, 0x4

    if-ne v3, v8, :cond_7

    .line 854
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notify2_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lorg/telegram/ui/ProfileActivity$8$1;->val$did:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 855
    const-wide/16 v4, 0x1

    .line 861
    .local v4, "flags":J
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v8

    iget-wide v10, p0, Lorg/telegram/ui/ProfileActivity$8$1;->val$did:J

    invoke-virtual {v8, v10, v11}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 862
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    iget-wide v10, p0, Lorg/telegram/ui/ProfileActivity$8$1;->val$did:J

    invoke-virtual {v8, v10, v11, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 863
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 864
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v10, p0, Lorg/telegram/ui/ProfileActivity$8$1;->val$did:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 865
    .restart local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v1, :cond_4

    .line 866
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 867
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iput v7, v8, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 869
    :cond_4
    iget-wide v8, p0, Lorg/telegram/ui/ProfileActivity$8$1;->val$did:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(J)V

    goto/16 :goto_0

    .line 845
    .end local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "flags":J
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    const/4 v8, 0x2

    if-ne v3, v8, :cond_6

    .line 846
    const v8, 0x2a300

    add-int/2addr v7, v8

    goto :goto_1

    .line 847
    :cond_6
    const/4 v8, 0x4

    if-ne v3, v8, :cond_3

    .line 848
    const v7, 0x7fffffff

    goto :goto_1

    .line 857
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v6    # "preferences":Landroid/content/SharedPreferences;
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notify2_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lorg/telegram/ui/ProfileActivity$8$1;->val$did:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 858
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notifyuntil_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lorg/telegram/ui/ProfileActivity$8$1;->val$did:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 859
    int-to-long v8, v7

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    const-wide/16 v10, 0x1

    or-long v4, v8, v10

    .restart local v4    # "flags":J
    goto/16 :goto_2
.end method
