.class Lorg/telegram/ui/PlusSettingsActivity$3$19;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PlusSettingsActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PlusSettingsActivity$3;

    .prologue
    .line 1428
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$19;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1431
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "plusconfig"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1432
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1433
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "chatsToLoad"

    .line 1434
    .local v1, "param":Ljava/lang/String;
    const/16 v3, 0x64

    .line 1435
    .local v3, "value":I
    if-nez p2, :cond_2

    .line 1436
    const/16 v3, 0x32

    .line 1458
    :cond_0
    :goto_0
    sput v3, Lorg/telegram/ui/ActionBar/Theme;->plusChatsToLoad:I

    .line 1459
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1460
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1461
    iget-object v4, p0, Lorg/telegram/ui/PlusSettingsActivity$3$19;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v4, v4, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1462
    iget-object v4, p0, Lorg/telegram/ui/PlusSettingsActivity$3$19;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v4, v4, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidateViews()V

    .line 1464
    :cond_1
    return-void

    .line 1437
    :cond_2
    const/4 v4, 0x1

    if-ne p2, v4, :cond_3

    .line 1438
    const/16 v3, 0x64

    goto :goto_0

    .line 1439
    :cond_3
    const/4 v4, 0x2

    if-ne p2, v4, :cond_4

    .line 1440
    const/16 v3, 0xc8

    goto :goto_0

    .line 1441
    :cond_4
    const/4 v4, 0x3

    if-ne p2, v4, :cond_5

    .line 1442
    const/16 v3, 0x12c

    goto :goto_0

    .line 1443
    :cond_5
    const/4 v4, 0x4

    if-ne p2, v4, :cond_6

    .line 1444
    const/16 v3, 0x190

    goto :goto_0

    .line 1445
    :cond_6
    const/4 v4, 0x5

    if-ne p2, v4, :cond_7

    .line 1446
    const/16 v3, 0x1f4

    goto :goto_0

    .line 1447
    :cond_7
    const/4 v4, 0x6

    if-ne p2, v4, :cond_8

    .line 1448
    const/16 v3, 0x2ee

    goto :goto_0

    .line 1449
    :cond_8
    const/4 v4, 0x7

    if-ne p2, v4, :cond_9

    .line 1450
    const/16 v3, 0x3e8

    goto :goto_0

    .line 1451
    :cond_9
    const/16 v4, 0x8

    if-ne p2, v4, :cond_a

    .line 1452
    const/16 v3, 0x5dc

    goto :goto_0

    .line 1453
    :cond_a
    const/16 v4, 0x9

    if-ne p2, v4, :cond_b

    .line 1454
    const/16 v3, 0x7d0

    goto :goto_0

    .line 1455
    :cond_b
    const/16 v4, 0xa

    if-ne p2, v4, :cond_0

    .line 1456
    const v3, 0xf4240

    goto :goto_0
.end method
