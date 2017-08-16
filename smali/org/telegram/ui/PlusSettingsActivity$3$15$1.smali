.class Lorg/telegram/ui/PlusSettingsActivity$3$15$1;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity$3$15;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/PlusSettingsActivity$3$15;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity$3$15;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/PlusSettingsActivity$3$15;

    .prologue
    .line 1252
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$15$1;->this$2:Lorg/telegram/ui/PlusSettingsActivity$3$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1255
    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity$3$15$1;->this$2:Lorg/telegram/ui/PlusSettingsActivity$3$15;

    iget-object v2, v2, Lorg/telegram/ui/PlusSettingsActivity$3$15;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    # setter for: Lorg/telegram/ui/PlusSettingsActivity;->reseting:Z
    invoke-static {v2, v4}, Lorg/telegram/ui/PlusSettingsActivity;->access$7402(Lorg/telegram/ui/PlusSettingsActivity;Z)Z

    .line 1256
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "plusconfig"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1257
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1258
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1259
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1260
    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity$3$15$1;->this$2:Lorg/telegram/ui/PlusSettingsActivity$3$15;

    iget-object v2, v2, Lorg/telegram/ui/PlusSettingsActivity$3$15;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    # getter for: Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1261
    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity$3$15$1;->this$2:Lorg/telegram/ui/PlusSettingsActivity$3$15;

    iget-object v2, v2, Lorg/telegram/ui/PlusSettingsActivity$3$15;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    # getter for: Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 1262
    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity$3$15$1;->this$2:Lorg/telegram/ui/PlusSettingsActivity$3$15;

    iget-object v2, v2, Lorg/telegram/ui/PlusSettingsActivity$3$15;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    # invokes: Lorg/telegram/ui/PlusSettingsActivity;->fixLayout()V
    invoke-static {v2}, Lorg/telegram/ui/PlusSettingsActivity;->access$7500(Lorg/telegram/ui/PlusSettingsActivity;)V

    .line 1264
    :cond_0
    return-void
.end method
