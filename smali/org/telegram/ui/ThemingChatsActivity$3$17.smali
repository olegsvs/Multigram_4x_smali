.class Lorg/telegram/ui/ThemingChatsActivity$3$17;
.super Ljava/lang/Object;
.source "ThemingChatsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingChatsActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemingChatsActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingChatsActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingChatsActivity$3;

    .prologue
    .line 563
    iput-object p1, p0, Lorg/telegram/ui/ThemingChatsActivity$3$17;->this$1:Lorg/telegram/ui/ThemingChatsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 566
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "theme"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 567
    .local v0, "themePrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "chatsHeaderGradient"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 568
    sput p2, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderGradient:I

    .line 570
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateDialogsTheme:I

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 571
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$3$17;->this$1:Lorg/telegram/ui/ThemingChatsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$2000(Lorg/telegram/ui/ThemingChatsActivity;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 572
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$3$17;->this$1:Lorg/telegram/ui/ThemingChatsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$2000(Lorg/telegram/ui/ThemingChatsActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 574
    :cond_0
    return-void
.end method