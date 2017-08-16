.class Lorg/telegram/ui/DialogsActivity$18;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
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
    .line 2116
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    const/4 v5, 0x0

    .line 2119
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 2120
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 2121
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2122
    .local v1, "child":Landroid/view/View;
    instance-of v4, v1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v4, :cond_1

    .line 2123
    check-cast v1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    .line 2120
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2124
    .restart local v1    # "child":Landroid/view/View;
    :cond_1
    instance-of v4, v1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v4, :cond_0

    .line 2125
    check-cast v1, Lorg/telegram/ui/Cells/DialogCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    goto :goto_1

    .line 2128
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getInnerListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    .line 2129
    .local v3, "recyclerListView":Lorg/telegram/ui/Components/RecyclerListView;
    if-eqz v3, :cond_4

    .line 2130
    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 2131
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_4

    .line 2132
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2133
    .restart local v1    # "child":Landroid/view/View;
    instance-of v4, v1, Lorg/telegram/ui/Cells/HintDialogCell;

    if-eqz v4, :cond_3

    .line 2134
    check-cast v1, Lorg/telegram/ui/Cells/HintDialogCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/HintDialogCell;->update()V

    .line 2131
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2138
    :cond_4
    return-void
.end method
