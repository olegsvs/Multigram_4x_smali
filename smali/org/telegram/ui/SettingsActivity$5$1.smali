.class Lorg/telegram/ui/SettingsActivity$5$1;
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

.field final synthetic val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity$5;Lorg/telegram/ui/Components/NumberPicker;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/SettingsActivity$5;

    .prologue
    .line 419
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$5$1;->this$1:Lorg/telegram/ui/SettingsActivity$5;

    iput-object p2, p0, Lorg/telegram/ui/SettingsActivity$5$1;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    iput p3, p0, Lorg/telegram/ui/SettingsActivity$5$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 422
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 423
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 424
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "fons_size"

    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity$5$1;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 425
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity$5$1;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v5

    iput v5, v4, Lorg/telegram/messenger/MessagesController;->fontSize:I

    .line 426
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 428
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "theme"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 429
    .local v3, "themePrefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 430
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "chatTextSize"

    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity$5$1;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 431
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 433
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity$5$1;->this$1:Lorg/telegram/ui/SettingsActivity$5;

    iget-object v4, v4, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;
    invoke-static {v4}, Lorg/telegram/ui/SettingsActivity;->access$400(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/SettingsActivity$ListAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 434
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity$5$1;->this$1:Lorg/telegram/ui/SettingsActivity$5;

    iget-object v4, v4, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;
    invoke-static {v4}, Lorg/telegram/ui/SettingsActivity;->access$400(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/SettingsActivity$ListAdapter;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/SettingsActivity$5$1;->val$position:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/SettingsActivity$ListAdapter;->notifyItemChanged(I)V

    .line 436
    :cond_0
    return-void
.end method
