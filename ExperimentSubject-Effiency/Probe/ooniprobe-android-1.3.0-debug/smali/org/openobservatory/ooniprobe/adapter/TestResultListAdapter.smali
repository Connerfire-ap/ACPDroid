.class public Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TestResultListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$OnItemClickListener;,
        Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:I

.field private mActivity:Landroid/support/v4/app/FragmentActivity;

.field mItemClickListener:Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$OnItemClickListener;

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/openobservatory/ooniprobe/model/TestResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/util/ArrayList<",
            "Lorg/openobservatory/ooniprobe/model/TestResult;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openobservatory/ooniprobe/model/TestResult;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 40
    iput-object p2, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->values:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;
    .param p1, "x1"    # I

    .line 30
    invoke-direct {p0, p1}, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->showResult(I)V

    return-void
.end method

.method public static final getColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 136
    .local v0, "version":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 137
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    return v1

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1
.end method

.method private showResult(I)V
    .locals 6
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/openobservatory/ooniprobe/fragment/ResultFragment;

    invoke-direct {v0}, Lorg/openobservatory/ooniprobe/fragment/ResultFragment;-><init>()V

    .line 85
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openobservatory/ooniprobe/model/TestResult;

    .line 87
    .local v2, "i":Lorg/openobservatory/ooniprobe/model/TestResult;
    const-string v3, "position"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 90
    .local v3, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 91
    .local v4, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v5, 0x7f08005a

    invoke-virtual {v4, v5, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 92
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 93
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 94
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 30
    check-cast p1, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->onBindViewHolder(Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openobservatory/ooniprobe/model/TestResult;

    .line 53
    .local v0, "i":Lorg/openobservatory/ooniprobe/model/TestResult;
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 54
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 55
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 56
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lorg/openobservatory/ooniprobe/model/TestResult;->input:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget v1, v0, Lorg/openobservatory/ooniprobe/model/TestResult;->anomaly:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 59
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v3, 0x7f050026

    invoke-static {v2, v3}, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 60
    :cond_0
    iget v1, v0, Lorg/openobservatory/ooniprobe/model/TestResult;->anomaly:I

    if-nez v1, :cond_1

    .line 61
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v3, 0x7f05002a

    invoke-static {v2, v3}, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v3, 0x7f05002d

    invoke-static {v2, v3}, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    :goto_0
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$1;

    invoke-direct {v2, p0, p2}, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$1;-><init>(Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;->viewResult:Landroid/widget/Button;

    new-instance v2, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$2;

    invoke-direct {v2, p0, p2}, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$2;-><init>(Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;-><init>(Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;Landroid/view/View;)V

    .line 47
    .local v1, "vh":Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;
    return-object v1
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/openobservatory/ooniprobe/model/TestResult;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openobservatory/ooniprobe/model/TestResult;>;"
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->values:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method public setOnItemClickListener(Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "mItemClickListener"    # Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mItemClickListener"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->mItemClickListener:Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$OnItemClickListener;

    .line 128
    return-void
.end method
