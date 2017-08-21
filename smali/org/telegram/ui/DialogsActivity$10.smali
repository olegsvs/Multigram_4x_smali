.class Lorg/telegram/ui/DialogsActivity$10;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/TabsView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 1062
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "type"    # I

    .prologue
    .line 1067
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 1068
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p2}, Lorg/telegram/ui/DialogsActivity;->access$3102(Lorg/telegram/ui/DialogsActivity;I)I

    .line 1069
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3600(Lorg/telegram/ui/DialogsActivity;)V

    .line 1070
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1071
    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    .line 1072
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)V

    .line 1075
    :cond_0
    return-void
.end method

.method public onTabClick()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1095
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 1097
    .local v0, "firstVisibleItem":I
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 1098
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->smoothScrollToPosition(I)V

    .line 1103
    :goto_0
    return-void

    .line 1100
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->scrollToPosition(I)V

    goto :goto_0
.end method

.method public onTabLongClick(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "type"    # I

    .prologue
    .line 1079
    if-nez p2, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusSortAll:I

    .line 1080
    .local v0, "sort":I
    :goto_0
    if-nez p2, :cond_a

    .line 1081
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, p1, p2, v0}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;III)V

    .line 1086
    :goto_1
    return-void

    .line 1079
    .end local v0    # "sort":I
    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusSortUsers:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    const/16 v1, 0x9

    if-ne p2, v1, :cond_3

    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusSortGroups:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne p2, v1, :cond_4

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusSortChannels:I

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne p2, v1, :cond_5

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusSortBots:I

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    if-ne p2, v1, :cond_6

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusSortSuperGroups:I

    goto :goto_0

    :cond_6
    const/16 v1, 0x8

    if-ne p2, v1, :cond_7

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusSortFavs:I

    goto :goto_0

    :cond_7
    const/16 v1, 0xa

    if-ne p2, v1, :cond_8

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusSortAdmin:I

    goto :goto_0

    :cond_8
    const/16 v1, 0xb

    if-ne p2, v1, :cond_9

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusSortUnread:I

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_0

    .line 1083
    .restart local v0    # "sort":I
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, p1, p2, v0}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;III)V

    goto :goto_1
.end method

.method public refresh(Z)V
    .locals 1
    .param p1, "bool"    # Z

    .prologue
    .line 1090
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1091
    return-void
.end method
