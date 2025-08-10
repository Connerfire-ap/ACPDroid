.class public Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RunTestListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$OnItemClickListener;,
        Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:I

.field private keys:[Ljava/lang/String;

.field private mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

.field mItemClickListener:Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$OnItemClickListener;

.field private values:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/openobservatory/ooniprobe/activity/MainActivity;Ljava/util/LinkedHashMap;)V
    .locals 2
    .param p1, "context"    # Lorg/openobservatory/ooniprobe/activity/MainActivity;
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
            "Lorg/openobservatory/ooniprobe/activity/MainActivity;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p2, "values":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    .line 38
    iput-object p2, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->values:Ljava/util/LinkedHashMap;

    .line 39
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->keys:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;)Lorg/openobservatory/ooniprobe/activity/MainActivity;
    .locals 1
    .param p0, "x0"    # Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;

    .line 27
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    return-object v0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Boolean;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->values:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->keys:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 27
    check-cast p1, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->onBindViewHolder(Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->keys:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 52
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->getItem(I)Ljava/lang/Boolean;

    move-result-object v1

    .line 53
    .local v1, "available":Ljava/lang/Boolean;
    iget-object v2, p1, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->txtTitle:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    iget-object v3, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-static {v3, v0}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->getTestName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v2, p1, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->txtDesc:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-static {v3, v0}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->getTestDescr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v2, p1, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->testImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->getTestImage(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p1, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->progressIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 58
    iget-object v2, p1, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->runTest:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 59
    iget-object v2, p1, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 60
    iget-object v2, p1, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->txtDesc:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v2, p1, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->runTest:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    iget-object v2, p1, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->progressIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    iget-object v2, p1, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 66
    iget-object v2, p1, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->txtDesc:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v2, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-static {v2, v2}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/openobservatory/ooniprobe/data/TestData;->getTestWithName(Ljava/lang/String;)Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    move-result-object v2

    .line 68
    .local v2, "current":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    if-eqz v2, :cond_1

    .line 69
    iget-object v3, p1, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    iget v4, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->progress:I

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 71
    .end local v2    # "current":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    :cond_1
    :goto_0
    iget-object v2, p1, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->runTest:Landroid/widget/Button;

    new-instance v3, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$1;

    invoke-direct {v3, p0, v0}, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$1;-><init>(Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v2, p1, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$2;

    invoke-direct {v3, p0, v0}, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$2;-><init>(Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
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

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;
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

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;-><init>(Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;Landroid/view/View;)V

    .line 46
    .local v1, "vh":Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;
    return-object v1
.end method

.method public setData(Ljava/util/LinkedHashMap;)V
    .locals 2
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
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p1, "data":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->values:Ljava/util/LinkedHashMap;

    .line 105
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->keys:[Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->notifyDataSetChanged()V

    .line 107
    return-void
.end method

.method public setOnItemClickListener(Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "mItemClickListener"    # Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mItemClickListener"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->mItemClickListener:Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$OnItemClickListener;

    .line 138
    return-void
.end method
