.class Lorg/telegram/ui/LanguageSelectActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "LanguageSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LanguageSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LanguageSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LanguageSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LanguageSelectActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LanguageSelectActivity;->search(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # setter for: Lorg/telegram/ui/LanguageSelectActivity;->searching:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/LanguageSelectActivity;->access$002(Lorg/telegram/ui/LanguageSelectActivity;Z)Z

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # setter for: Lorg/telegram/ui/LanguageSelectActivity;->searchWas:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/LanguageSelectActivity;->access$102(Lorg/telegram/ui/LanguageSelectActivity;Z)Z

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$200(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$300(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$200(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$400(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 103
    :cond_0
    return-void
.end method

.method public onSearchExpand()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/LanguageSelectActivity;->searching:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$002(Lorg/telegram/ui/LanguageSelectActivity;Z)Z

    .line 92
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 3
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/LanguageSelectActivity;->search(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    const/4 v2, 0x1

    # setter for: Lorg/telegram/ui/LanguageSelectActivity;->searchWas:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/LanguageSelectActivity;->access$102(Lorg/telegram/ui/LanguageSelectActivity;Z)Z

    .line 111
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$200(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$200(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;
    invoke-static {v2}, Lorg/telegram/ui/LanguageSelectActivity;->access$500(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 115
    :cond_0
    return-void
.end method
