.class Lorg/telegram/ui/SettingsActivity$5$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity$5;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SettingsActivity$5;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity$5;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/SettingsActivity$5;

    .prologue
    .line 563
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$5$4;->this$1:Lorg/telegram/ui/SettingsActivity$5;

    iput p2, p0, Lorg/telegram/ui/SettingsActivity$5$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 566
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 567
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 568
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "sortContactsBy"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 569
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 570
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$5$4;->this$1:Lorg/telegram/ui/SettingsActivity$5;

    iget-object v2, v2, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$400(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/SettingsActivity$ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$5$4;->this$1:Lorg/telegram/ui/SettingsActivity$5;

    iget-object v2, v2, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$400(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/SettingsActivity$ListAdapter;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/SettingsActivity$5$4;->val$position:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/SettingsActivity$ListAdapter;->notifyItemChanged(I)V

    .line 573
    :cond_0
    return-void
.end method
