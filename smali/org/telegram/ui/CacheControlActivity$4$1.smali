.class Lorg/telegram/ui/CacheControlActivity$4$1;
.super Ljava/lang/Object;
.source "CacheControlActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity$4;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CacheControlActivity$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/CacheControlActivity$4;

    .prologue
    .line 346
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$4$1;->this$1:Lorg/telegram/ui/CacheControlActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-wide/32 v2, 0x5265c00

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x2

    const/4 v10, 0x0

    .line 349
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    invoke-virtual {v4, v5, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 350
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p2, :cond_2

    .line 351
    const-string/jumbo v4, "keep_media"

    invoke-interface {v7, v4, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 359
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity$4$1;->this$1:Lorg/telegram/ui/CacheControlActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;
    invoke-static {v4}, Lorg/telegram/ui/CacheControlActivity;->access$1100(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 360
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity$4$1;->this$1:Lorg/telegram/ui/CacheControlActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;
    invoke-static {v4}, Lorg/telegram/ui/CacheControlActivity;->access$1100(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->notifyDataSetChanged()V

    .line 362
    :cond_1
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v9, Lorg/telegram/messenger/ClearCacheService;

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v4, v10, v5, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 363
    .local v6, "pintent":Landroid/app/PendingIntent;
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 364
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-ne p2, v1, :cond_5

    .line 365
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 369
    :goto_1
    return-void

    .line 352
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v6    # "pintent":Landroid/app/PendingIntent;
    :cond_2
    if-ne p2, v8, :cond_3

    .line 353
    const-string/jumbo v4, "keep_media"

    invoke-interface {v7, v4, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 354
    :cond_3
    if-ne p2, v1, :cond_4

    .line 355
    const-string/jumbo v4, "keep_media"

    invoke-interface {v7, v4, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 356
    :cond_4
    if-ne p2, v9, :cond_0

    .line 357
    const-string/jumbo v4, "keep_media"

    invoke-interface {v7, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .restart local v0    # "alarmManager":Landroid/app/AlarmManager;
    .restart local v6    # "pintent":Landroid/app/PendingIntent;
    :cond_5
    move-wide v4, v2

    .line 367
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method
