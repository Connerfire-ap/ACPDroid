.class public Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;
.super Landroid/view/ViewGroup;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$SavedState;,
        Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;,
        Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;,
        Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final COLLAPSED_PLUS_ROTATION:F = 0.0f

.field private static final EXPANDED_PLUS_ROTATION:F = 135.0f

.field public static final EXPAND_DOWN:I = 0x1

.field public static final EXPAND_LEFT:I = 0x2

.field public static final EXPAND_RIGHT:I = 0x3

.field public static final EXPAND_UP:I = 0x0

.field public static final LABELS_ON_LEFT_SIDE:I = 0x0

.field public static final LABELS_ON_RIGHT_SIDE:I = 0x1

.field private static sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

.field private static sCollapseInterpolator:Landroid/view/animation/Interpolator;

.field private static sExpandInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

.field private mAddButtonColorNormal:I

.field private mAddButtonColorPressed:I

.field private mAddButtonPlusColor:I

.field private mAddButtonSize:I

.field private mAddButtonStrokeVisible:Z

.field private mButtonSpacing:I

.field private mButtonsCount:I

.field private mCollapseAnimation:Lcom/nineoldandroids/animation/AnimatorSet;

.field private mExpandAnimation:Lcom/nineoldandroids/animation/AnimatorSet;

.field private mExpandDirection:I

.field private mExpanded:Z

.field private mLabelsMargin:I

.field private mLabelsPosition:I

.field private mLabelsStyle:I

.field private mLabelsVerticalOffset:I

.field private mListener:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

.field private mMaxButtonHeight:I

.field private mMaxButtonWidth:I

.field private mRotatingDrawable:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

.field private mTouchDelegateGroup:Lnet/i2p/android/ext/floatingactionbutton/TouchDelegateGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 429
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;

    .line 430
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 431
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, 0x12c

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 57
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 81
    invoke-direct {p0, p1, p2}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v2, 0x12c

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 57
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 86
    invoke-direct {p0, p1, p2}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)I
    .locals 1
    .param p0, "x0"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 30
    iget v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButtonPlusColor:I

    return v0
.end method

.method static synthetic access$100(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)I
    .locals 1
    .param p0, "x0"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 30
    iget v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorNormal:I

    return v0
.end method

.method static synthetic access$1000()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1200(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)I
    .locals 1
    .param p0, "x0"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 30
    iget v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    return v0
.end method

.method static synthetic access$200(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)I
    .locals 1
    .param p0, "x0"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 30
    iget v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorPressed:I

    return v0
.end method

.method static synthetic access$300(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)Z
    .locals 1
    .param p0, "x0"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 30
    iget-boolean v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButtonStrokeVisible:Z

    return v0
.end method

.method static synthetic access$402(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;)Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;
    .locals 0
    .param p0, "x0"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;
    .param p1, "x1"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    .prologue
    .line 30
    iput-object p1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    return-object p1
.end method

.method static synthetic access$500(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)Lcom/nineoldandroids/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 30
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Lcom/nineoldandroids/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$600(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)Lcom/nineoldandroids/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 30
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Lcom/nineoldandroids/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$900()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private adjustForOvershoot(I)I
    .locals 1
    .param p1, "dimension"    # I

    .prologue
    .line 276
    mul-int/lit8 v0, p1, 0xc

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private collapse(Z)V
    .locals 3
    .param p1, "immediately"    # Z

    .prologue
    const/4 v1, 0x0

    .line 543
    iget-boolean v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 544
    iput-boolean v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 545
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lnet/i2p/android/ext/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v0, v1}, Lnet/i2p/android/ext/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 546
    iget-object v2, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Lcom/nineoldandroids/animation/AnimatorSet;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 547
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 548
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->cancel()V

    .line 550
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mListener:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mListener:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    invoke-interface {v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuCollapsed()V

    .line 554
    :cond_0
    return-void

    .line 546
    :cond_1
    const-wide/16 v0, 0x12c

    goto :goto_0
.end method

.method private createAddButton(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    new-instance v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$1;

    invoke-direct {v0, p0, p1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$1;-><init>(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    .line 181
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    sget v1, Lnet/i2p/android/ext/floatingactionbutton/R$id;->fab_expand_menu_button:I

    invoke-virtual {v0, v1}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->setId(I)V

    .line 182
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    iget v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButtonSize:I

    invoke-virtual {v0, v1}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->setSize(I)V

    .line 183
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    new-instance v1, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$2;

    invoke-direct {v1, p0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$2;-><init>(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)V

    invoke-virtual {v0, v1}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 192
    return-void
.end method

.method private createLabels()V
    .locals 7

    .prologue
    .line 516
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    invoke-direct {v1, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 518
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    if-ge v2, v5, :cond_2

    .line 519
    invoke-virtual {p0, v2}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionButton;

    .line 520
    .local v0, "button":Lnet/i2p/android/ext/floatingactionbutton/FloatingActionButton;
    invoke-virtual {v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 522
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    if-eq v0, v5, :cond_0

    if-eqz v4, :cond_0

    sget v5, Lnet/i2p/android/ext/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v0, v5}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 518
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 525
    :cond_1
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 526
    .local v3, "label":Landroid/widget/TextView;
    invoke-virtual {p0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 527
    invoke-virtual {v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    invoke-virtual {p0, v3}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;)V

    .line 530
    sget v5, Lnet/i2p/android/ext/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v0, v5, v3}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 532
    .end local v0    # "button":Lnet/i2p/android/ext/floatingactionbutton/FloatingActionButton;
    .end local v3    # "label":Landroid/widget/TextView;
    .end local v4    # "title":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private expandsHorizontally()Z
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getColor(I)I
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 211
    invoke-virtual {p0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-virtual {p0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/i2p/android/ext/floatingactionbutton/R$dimen;->fab_actions_spacing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lnet/i2p/android/ext/floatingactionbutton/R$dimen;->fab_shadow_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lnet/i2p/android/ext/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    .line 91
    invoke-virtual {p0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/i2p/android/ext/floatingactionbutton/R$dimen;->fab_labels_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    .line 92
    invoke-virtual {p0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/i2p/android/ext/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mLabelsVerticalOffset:I

    .line 94
    new-instance v1, Lnet/i2p/android/ext/floatingactionbutton/TouchDelegateGroup;

    invoke-direct {v1, p0}, Lnet/i2p/android/ext/floatingactionbutton/TouchDelegateGroup;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lnet/i2p/android/ext/floatingactionbutton/TouchDelegateGroup;

    .line 95
    iget-object v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lnet/i2p/android/ext/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {p0, v1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 97
    sget-object v1, Lnet/i2p/android/ext/floatingactionbutton/R$styleable;->FloatingActionsMenu:[I

    invoke-virtual {p1, p2, v1, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    .local v0, "attr":Landroid/content/res/TypedArray;
    sget v1, Lnet/i2p/android/ext/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonPlusIconColor:I

    const v2, 0x106000b

    invoke-direct {p0, v2}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButtonPlusColor:I

    .line 99
    sget v1, Lnet/i2p/android/ext/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonColorNormal:I

    sget v2, Lnet/i2p/android/ext/floatingactionbutton/R$color;->default_normal:I

    invoke-direct {p0, v2}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorNormal:I

    .line 100
    sget v1, Lnet/i2p/android/ext/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonColorPressed:I

    sget v2, Lnet/i2p/android/ext/floatingactionbutton/R$color;->default_pressed:I

    invoke-direct {p0, v2}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorPressed:I

    .line 101
    sget v1, Lnet/i2p/android/ext/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonSize:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButtonSize:I

    .line 102
    sget v1, Lnet/i2p/android/ext/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonStrokeVisible:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButtonStrokeVisible:Z

    .line 103
    sget v1, Lnet/i2p/android/ext/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_expandDirection:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    .line 104
    sget v1, Lnet/i2p/android/ext/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_labelStyle:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    .line 105
    sget v1, Lnet/i2p/android/ext/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_labelsPosition:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    .line 106
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    iget v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Action labels in horizontal expand orientation is not supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->createAddButton(Landroid/content/Context;)V

    .line 113
    return-void
.end method


# virtual methods
.method public addButton(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionButton;)V
    .locals 1
    .param p1, "button"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionButton;

    .prologue
    .line 195
    iget v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;I)V

    .line 196
    iget v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 198
    iget v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->createLabels()V

    .line 201
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 426
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method public collapse()V
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->collapse(Z)V

    .line 536
    return-void
.end method

.method public collapseImmediately()V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->collapse(Z)V

    .line 540
    return-void
.end method

.method public expand()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 565
    iget-boolean v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-nez v0, :cond_0

    .line 566
    iput-boolean v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 567
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lnet/i2p/android/ext/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v0, v1}, Lnet/i2p/android/ext/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 568
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->cancel()V

    .line 569
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 571
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mListener:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mListener:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    invoke-interface {v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuExpanded()V

    .line 575
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 411
    new-instance v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 416
    new-instance v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 421
    new-instance v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 505
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 507
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {p0, v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->bringChildToFront(Landroid/view/View;)V

    .line 508
    invoke-virtual {p0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getChildCount()I

    move-result v0

    iput v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 510
    iget v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz v0, :cond_0

    .line 511
    invoke-direct {p0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->createLabels()V

    .line 513
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 35
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 281
    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_0

    .line 407
    :cond_0
    return-void

    .line 284
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    move/from16 v30, v0

    if-nez v30, :cond_3

    const/4 v15, 0x1

    .line 286
    .local v15, "expandUp":Z
    :goto_0
    if-eqz p1, :cond_1

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lnet/i2p/android/ext/floatingactionbutton/TouchDelegateGroup;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lnet/i2p/android/ext/floatingactionbutton/TouchDelegateGroup;->clearTouchDelegates()V

    .line 290
    :cond_1
    if-eqz v15, :cond_4

    sub-int v30, p5, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v31

    sub-int v8, v30, v31

    .line 292
    .local v8, "addButtonY":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    move/from16 v30, v0

    if-nez v30, :cond_5

    sub-int v30, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    sub-int v9, v30, v31

    .line 295
    .local v9, "buttonsHorizontalCenter":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    sub-int v5, v9, v30

    .line 296
    .local v5, "addButtonLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v31

    add-int v31, v31, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v32

    add-int v32, v32, v8

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v5, v8, v1, v2}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->layout(IIII)V

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    move/from16 v30, v0

    div-int/lit8 v30, v30, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    move/from16 v31, v0

    add-int v24, v30, v31

    .line 299
    .local v24, "labelsOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    move/from16 v30, v0

    if-nez v30, :cond_6

    sub-int v25, v9, v24

    .line 303
    .local v25, "labelsXNearButton":I
    :goto_3
    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v30, v0

    sub-int v27, v8, v30

    .line 307
    .local v27, "nextY":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    move/from16 v30, v0

    add-int/lit8 v17, v30, -0x1

    .local v17, "i":I
    :goto_5
    if-ltz v17, :cond_0

    .line 308
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 310
    .local v10, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    if-eq v10, v0, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 307
    :cond_2
    :goto_6
    add-int/lit8 v17, v17, -0x1

    goto :goto_5

    .line 284
    .end local v5    # "addButtonLeft":I
    .end local v8    # "addButtonY":I
    .end local v9    # "buttonsHorizontalCenter":I
    .end local v10    # "child":Landroid/view/View;
    .end local v15    # "expandUp":Z
    .end local v17    # "i":I
    .end local v24    # "labelsOffset":I
    .end local v25    # "labelsXNearButton":I
    .end local v27    # "nextY":I
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 290
    .restart local v15    # "expandUp":Z
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 292
    .restart local v8    # "addButtonY":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    move/from16 v30, v0

    div-int/lit8 v9, v30, 0x2

    goto/16 :goto_2

    .line 299
    .restart local v5    # "addButtonLeft":I
    .restart local v9    # "buttonsHorizontalCenter":I
    .restart local v24    # "labelsOffset":I
    :cond_6
    add-int v25, v9, v24

    goto :goto_3

    .line 303
    .restart local v25    # "labelsXNearButton":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v30

    add-int v30, v30, v8

    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v31, v0

    add-int v27, v30, v31

    goto :goto_4

    .line 312
    .restart local v10    # "child":Landroid/view/View;
    .restart local v17    # "i":I
    .restart local v27    # "nextY":I
    :cond_8
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    sub-int v11, v9, v30

    .line 313
    .local v11, "childX":I
    if-eqz v15, :cond_a

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v30

    sub-int v12, v27, v30

    .line 314
    .local v12, "childY":I
    :goto_7
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    add-int v30, v30, v11

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    add-int v31, v31, v12

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v10, v11, v12, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 316
    sub-int v30, v8, v12

    move/from16 v0, v30

    int-to-float v13, v0

    .line 317
    .local v13, "collapsedTranslation":F
    const/16 v16, 0x0

    .line 319
    .local v16, "expandedTranslation":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v30, v0

    if-eqz v30, :cond_b

    move/from16 v30, v16

    :goto_8
    move/from16 v0, v30

    invoke-static {v10, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 320
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v30, v0

    if-eqz v30, :cond_c

    const/high16 v30, 0x3f800000    # 1.0f

    :goto_9
    move/from16 v0, v30

    invoke-static {v10, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 322
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 323
    .local v28, "params":Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Lcom/nineoldandroids/animation/ObjectAnimator;
    invoke-static/range {v28 .. v28}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v30

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v16, v31, v32

    const/16 v32, 0x1

    aput v13, v31, v32

    invoke-virtual/range {v30 .. v31}, Lcom/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    .line 324
    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Lcom/nineoldandroids/animation/ObjectAnimator;
    invoke-static/range {v28 .. v28}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v30

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v13, v31, v32

    const/16 v32, 0x1

    aput v16, v31, v32

    invoke-virtual/range {v30 .. v31}, Lcom/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    .line 325
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    .line 327
    sget v30, Lnet/i2p/android/ext/floatingactionbutton/R$id;->fab_label:I

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 328
    .local v18, "label":Landroid/view/View;
    if-eqz v18, :cond_9

    .line 329
    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    move/from16 v30, v0

    if-nez v30, :cond_d

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    sub-int v23, v25, v30

    .line 333
    .local v23, "labelXAwayFromButton":I
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    move/from16 v30, v0

    if-nez v30, :cond_e

    move/from16 v19, v23

    .line 337
    .local v19, "labelLeft":I
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    move/from16 v30, v0

    if-nez v30, :cond_f

    move/from16 v21, v25

    .line 341
    .local v21, "labelRight":I
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mLabelsVerticalOffset:I

    move/from16 v30, v0

    sub-int v30, v12, v30

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    sub-int v31, v31, v32

    div-int/lit8 v31, v31, 0x2

    add-int v22, v30, v31

    .line 343
    .local v22, "labelTop":I
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v30

    add-int v30, v30, v22

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v21

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 345
    new-instance v29, Landroid/graphics/Rect;

    move/from16 v0, v19

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    sub-int v31, v12, v31

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    add-int v32, v32, v11

    move/from16 v0, v32

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v32

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v33

    add-int v33, v33, v12

    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    add-int v33, v33, v34

    invoke-direct/range {v29 .. v33}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 350
    .local v29, "touchArea":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lnet/i2p/android/ext/floatingactionbutton/TouchDelegateGroup;

    move-object/from16 v30, v0

    new-instance v31, Landroid/view/TouchDelegate;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual/range {v30 .. v31}, Lnet/i2p/android/ext/floatingactionbutton/TouchDelegateGroup;->addTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 352
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v30, v0

    if-eqz v30, :cond_10

    move/from16 v30, v16

    :goto_d
    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 353
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v30, v0

    if-eqz v30, :cond_11

    const/high16 v30, 0x3f800000    # 1.0f

    :goto_e
    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 355
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 356
    .local v20, "labelParams":Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Lcom/nineoldandroids/animation/ObjectAnimator;
    invoke-static/range {v20 .. v20}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v30

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v16, v31, v32

    const/16 v32, 0x1

    aput v13, v31, v32

    invoke-virtual/range {v30 .. v31}, Lcom/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    .line 357
    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Lcom/nineoldandroids/animation/ObjectAnimator;
    invoke-static/range {v20 .. v20}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v30

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v13, v31, v32

    const/16 v32, 0x1

    aput v16, v31, v32

    invoke-virtual/range {v30 .. v31}, Lcom/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    .line 358
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    .line 361
    .end local v19    # "labelLeft":I
    .end local v20    # "labelParams":Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    .end local v21    # "labelRight":I
    .end local v22    # "labelTop":I
    .end local v23    # "labelXAwayFromButton":I
    .end local v29    # "touchArea":Landroid/graphics/Rect;
    :cond_9
    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v30, v0

    sub-int v27, v12, v30

    :goto_f
    goto/16 :goto_6

    .end local v12    # "childY":I
    .end local v13    # "collapsedTranslation":F
    .end local v16    # "expandedTranslation":F
    .end local v18    # "label":Landroid/view/View;
    .end local v28    # "params":Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    :cond_a
    move/from16 v12, v27

    .line 313
    goto/16 :goto_7

    .restart local v12    # "childY":I
    .restart local v13    # "collapsedTranslation":F
    .restart local v16    # "expandedTranslation":F
    :cond_b
    move/from16 v30, v13

    .line 319
    goto/16 :goto_8

    .line 320
    :cond_c
    const/16 v30, 0x0

    goto/16 :goto_9

    .line 329
    .restart local v18    # "label":Landroid/view/View;
    .restart local v28    # "params":Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    :cond_d
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    add-int v23, v25, v30

    goto/16 :goto_a

    .restart local v23    # "labelXAwayFromButton":I
    :cond_e
    move/from16 v19, v25

    .line 333
    goto/16 :goto_b

    .restart local v19    # "labelLeft":I
    :cond_f
    move/from16 v21, v23

    .line 337
    goto/16 :goto_c

    .restart local v21    # "labelRight":I
    .restart local v22    # "labelTop":I
    .restart local v29    # "touchArea":Landroid/graphics/Rect;
    :cond_10
    move/from16 v30, v13

    .line 352
    goto :goto_d

    .line 353
    :cond_11
    const/16 v30, 0x0

    goto :goto_e

    .line 361
    .end local v19    # "labelLeft":I
    .end local v21    # "labelRight":I
    .end local v22    # "labelTop":I
    .end local v23    # "labelXAwayFromButton":I
    .end local v29    # "touchArea":Landroid/graphics/Rect;
    :cond_12
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v30

    add-int v30, v30, v12

    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v31, v0

    add-int v27, v30, v31

    goto :goto_f

    .line 369
    .end local v5    # "addButtonLeft":I
    .end local v8    # "addButtonY":I
    .end local v9    # "buttonsHorizontalCenter":I
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childX":I
    .end local v12    # "childY":I
    .end local v13    # "collapsedTranslation":F
    .end local v15    # "expandUp":Z
    .end local v16    # "expandedTranslation":F
    .end local v17    # "i":I
    .end local v18    # "label":Landroid/view/View;
    .end local v24    # "labelsOffset":I
    .end local v25    # "labelsXNearButton":I
    .end local v27    # "nextY":I
    .end local v28    # "params":Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    const/4 v14, 0x1

    .line 371
    .local v14, "expandLeft":Z
    :goto_10
    if-eqz v14, :cond_15

    sub-int v30, p4, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v31

    sub-int v7, v30, v31

    .line 373
    .local v7, "addButtonX":I
    :goto_11
    sub-int v30, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v32

    sub-int v31, v31, v32

    div-int/lit8 v31, v31, 0x2

    add-int v6, v30, v31

    .line 374
    .local v6, "addButtonTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v31

    add-int v31, v31, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v32

    add-int v32, v32, v6

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v7, v6, v1, v2}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->layout(IIII)V

    .line 376
    if-eqz v14, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v30, v0

    sub-int v26, v7, v30

    .line 380
    .local v26, "nextX":I
    :goto_12
    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    move/from16 v30, v0

    add-int/lit8 v17, v30, -0x1

    .restart local v17    # "i":I
    :goto_13
    if-ltz v17, :cond_0

    .line 381
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 383
    .restart local v10    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    if-eq v10, v0, :cond_13

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_17

    .line 380
    :cond_13
    :goto_14
    add-int/lit8 v17, v17, -0x1

    goto :goto_13

    .line 369
    .end local v6    # "addButtonTop":I
    .end local v7    # "addButtonX":I
    .end local v10    # "child":Landroid/view/View;
    .end local v14    # "expandLeft":Z
    .end local v17    # "i":I
    .end local v26    # "nextX":I
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_10

    .line 371
    .restart local v14    # "expandLeft":Z
    :cond_15
    const/4 v7, 0x0

    goto :goto_11

    .line 376
    .restart local v6    # "addButtonTop":I
    .restart local v7    # "addButtonX":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v30

    add-int v30, v30, v7

    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v31, v0

    add-int v26, v30, v31

    goto :goto_12

    .line 385
    .restart local v10    # "child":Landroid/view/View;
    .restart local v17    # "i":I
    .restart local v26    # "nextX":I
    :cond_17
    if-eqz v14, :cond_18

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    sub-int v11, v26, v30

    .line 386
    .restart local v11    # "childX":I
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v30

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    sub-int v30, v30, v31

    div-int/lit8 v30, v30, 0x2

    add-int v12, v6, v30

    .line 387
    .restart local v12    # "childY":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    add-int v30, v30, v11

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    add-int v31, v31, v12

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v10, v11, v12, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 389
    sub-int v30, v7, v11

    move/from16 v0, v30

    int-to-float v13, v0

    .line 390
    .restart local v13    # "collapsedTranslation":F
    const/16 v16, 0x0

    .line 392
    .restart local v16    # "expandedTranslation":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v30, v0

    if-eqz v30, :cond_19

    move/from16 v30, v16

    :goto_16
    move/from16 v0, v30

    invoke-static {v10, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 393
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1a

    const/high16 v30, 0x3f800000    # 1.0f

    :goto_17
    move/from16 v0, v30

    invoke-static {v10, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 395
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 396
    .restart local v28    # "params":Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Lcom/nineoldandroids/animation/ObjectAnimator;
    invoke-static/range {v28 .. v28}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v30

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v16, v31, v32

    const/16 v32, 0x1

    aput v13, v31, v32

    invoke-virtual/range {v30 .. v31}, Lcom/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    .line 397
    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Lcom/nineoldandroids/animation/ObjectAnimator;
    invoke-static/range {v28 .. v28}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v30

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v13, v31, v32

    const/16 v32, 0x1

    aput v16, v31, v32

    invoke-virtual/range {v30 .. v31}, Lcom/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    .line 398
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    .line 400
    if-eqz v14, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v30, v0

    sub-int v26, v11, v30

    :goto_18
    goto/16 :goto_14

    .end local v11    # "childX":I
    .end local v12    # "childY":I
    .end local v13    # "collapsedTranslation":F
    .end local v16    # "expandedTranslation":F
    .end local v28    # "params":Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    :cond_18
    move/from16 v11, v26

    .line 385
    goto/16 :goto_15

    .restart local v11    # "childX":I
    .restart local v12    # "childY":I
    .restart local v13    # "collapsedTranslation":F
    .restart local v16    # "expandedTranslation":F
    :cond_19
    move/from16 v30, v13

    .line 392
    goto :goto_16

    .line 393
    :cond_1a
    const/16 v30, 0x0

    goto :goto_17

    .line 400
    .restart local v28    # "params":Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    :cond_1b
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    add-int v30, v30, v11

    move-object/from16 v0, p0

    iget v0, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v31, v0

    add-int v26, v30, v31

    goto :goto_18

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 216
    invoke-virtual {p0, p1, p2}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->measureChildren(II)V

    .line 218
    const/4 v5, 0x0

    .line 219
    .local v5, "width":I
    const/4 v1, 0x0

    .line 221
    .local v1, "height":I
    iput v6, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    .line 222
    iput v6, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    .line 223
    const/4 v4, 0x0

    .line 225
    .local v4, "maxLabelWidth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v7, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    if-ge v2, v7, :cond_2

    .line 226
    invoke-virtual {p0, v2}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 225
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_1
    iget v7, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    packed-switch v7, :pswitch_data_0

    .line 245
    :goto_2
    invoke-direct {p0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result v7

    if-nez v7, :cond_0

    .line 246
    sget v7, Lnet/i2p/android/ext/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v0, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 247
    .local v3, "label":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 248
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1

    .line 235
    .end local v3    # "label":Landroid/widget/TextView;
    :pswitch_0
    iget v7, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    .line 236
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v1, v7

    .line 237
    goto :goto_2

    .line 240
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    .line 241
    iget v7, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    goto :goto_2

    .line 253
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result v7

    if-nez v7, :cond_4

    .line 254
    iget v7, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    if-lez v4, :cond_3

    iget v6, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    add-int/2addr v6, v4

    :cond_3
    add-int v5, v7, v6

    .line 259
    :goto_3
    iget v6, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    packed-switch v6, :pswitch_data_1

    .line 272
    :goto_4
    invoke-virtual {p0, v5, v1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->setMeasuredDimension(II)V

    .line 273
    return-void

    .line 256
    :cond_4
    iget v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    goto :goto_3

    .line 262
    :pswitch_2
    iget v6, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    iget v7, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 263
    invoke-direct {p0, v1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->adjustForOvershoot(I)I

    move-result v1

    .line 264
    goto :goto_4

    .line 267
    :pswitch_3
    iget v6, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    iget v7, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 268
    invoke-direct {p0, v5}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->adjustForOvershoot(I)I

    move-result v5

    goto :goto_4

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 259
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 599
    instance-of v1, p1, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$SavedState;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 600
    check-cast v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$SavedState;

    .line 601
    .local v0, "savedState":Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$SavedState;
    iget-boolean v1, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    iput-boolean v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 602
    iget-object v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lnet/i2p/android/ext/floatingactionbutton/TouchDelegateGroup;

    iget-boolean v2, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    invoke-virtual {v1, v2}, Lnet/i2p/android/ext/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 604
    iget-object v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    if-eqz v1, :cond_0

    .line 605
    iget-object v2, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    iget-boolean v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x43070000    # 135.0f

    :goto_0
    invoke-virtual {v2, v1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;->setRotation(F)V

    .line 608
    :cond_0
    invoke-virtual {v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 612
    .end local v0    # "savedState":Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$SavedState;
    :goto_1
    return-void

    .line 605
    .restart local v0    # "savedState":Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$SavedState;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 610
    .end local v0    # "savedState":Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$SavedState;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 590
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 591
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$SavedState;

    invoke-direct {v0, v1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 592
    .local v0, "savedState":Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$SavedState;
    iget-boolean v2, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    iput-boolean v2, v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    .line 594
    return-object v0
.end method

.method public removeButton(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionButton;)V
    .locals 2
    .param p1, "button"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionButton;

    .prologue
    .line 204
    invoke-virtual {p1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->removeView(Landroid/view/View;)V

    .line 205
    invoke-virtual {p0, p1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->removeView(Landroid/view/View;)V

    .line 206
    sget v0, Lnet/i2p/android/ext/floatingactionbutton/R$id;->fab_label:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    .line 207
    iget v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 208
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 583
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 585
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v0, p1}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->setEnabled(Z)V

    .line 586
    return-void
.end method

.method public setOnFloatingActionsMenuUpdateListener(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    .prologue
    .line 116
    iput-object p1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mListener:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    .line 117
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->collapse()V

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    invoke-virtual {p0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->expand()V

    goto :goto_0
.end method
