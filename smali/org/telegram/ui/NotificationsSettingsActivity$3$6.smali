.class Lorg/telegram/ui/NotificationsSettingsActivity$3$6;
.super Ljava/lang/Object;
.source "NotificationsSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NotificationsSettingsActivity$3;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/NotificationsSettingsActivity$3;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/NotificationsSettingsActivity$3;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/NotificationsSettingsActivity$3;

    .prologue
    .line 448
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3$6;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$3;

    iput p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "minutes":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 453
    const/4 v0, 0x5

    .line 465
    :cond_0
    :goto_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->Notifications:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 466
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "repeat_messages"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 467
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3$6;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$900(Lorg/telegram/ui/NotificationsSettingsActivity;)Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3$6;->val$position:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->notifyItemChanged(I)V

    .line 468
    return-void

    .line 454
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 455
    const/16 v0, 0xa

    goto :goto_0

    .line 456
    :cond_2
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    .line 457
    const/16 v0, 0x1e

    goto :goto_0

    .line 458
    :cond_3
    const/4 v2, 0x4

    if-ne p2, v2, :cond_4

    .line 459
    const/16 v0, 0x3c

    goto :goto_0

    .line 460
    :cond_4
    const/4 v2, 0x5

    if-ne p2, v2, :cond_5

    .line 461
    const/16 v0, 0x78

    goto :goto_0

    .line 462
    :cond_5
    const/4 v2, 0x6

    if-ne p2, v2, :cond_0

    .line 463
    const/16 v0, 0xf0

    goto :goto_0
.end method
