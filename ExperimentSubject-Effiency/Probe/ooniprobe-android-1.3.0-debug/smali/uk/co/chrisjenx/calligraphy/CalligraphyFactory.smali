.class Luk/co/chrisjenx/calligraphy/CalligraphyFactory;
.super Ljava/lang/Object;
.source "CalligraphyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/chrisjenx/calligraphy/CalligraphyFactory$ToolbarLayoutListener;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_SUBTITLE:Ljava/lang/String; = "action_bar_subtitle"

.field private static final ACTION_BAR_TITLE:Ljava/lang/String; = "action_bar_title"


# instance fields
.field private final mAttributeId:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "attributeId"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->mAttributeId:[I

    .line 101
    return-void
.end method

.method private getDefaultTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fontPath"    # Ljava/lang/String;

    .line 174
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->get()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->getFontPath()Ljava/lang/String;

    move-result-object p2

    .line 177
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p2}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 180
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static getStyleForTextView(Landroid/widget/TextView;)[I
    .locals 5
    .param p0, "view"    # Landroid/widget/TextView;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 32
    .local v0, "styleIds":[I
    invoke-static {p0}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->isActionBarTitle(Landroid/widget/TextView;)Z

    move-result v1

    const/4 v2, 0x1

    const v3, 0x10102ce

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 33
    aput v3, v0, v4

    .line 34
    const v1, 0x10102f8

    aput v1, v0, v2

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p0}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->isActionBarSubTitle(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    aput v3, v0, v4

    .line 37
    const v1, 0x10102f9

    aput v1, v0, v2

    .line 39
    :cond_1
    :goto_0
    aget v1, v0, v4

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 41
    invoke-static {}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->get()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->getClassStyles()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    invoke-static {}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->get()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->getClassStyles()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    const v1, 0x1010034

    :goto_1
    aput v1, v0, v4

    .line 45
    :cond_3
    return-object v0

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method protected static isActionBarSubTitle(Landroid/widget/TextView;)Z
    .locals 3
    .param p0, "view"    # Landroid/widget/TextView;

    .line 72
    const-string v0, "action_bar_subtitle"

    invoke-static {p0, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->matchesResourceIdName(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 73
    :cond_0
    invoke-static {p0}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->parentIsToolbarV7(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 75
    .local v0, "parent":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 77
    .end local v0    # "parent":Landroid/support/v7/widget/Toolbar;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected static isActionBarTitle(Landroid/widget/TextView;)Z
    .locals 3
    .param p0, "view"    # Landroid/widget/TextView;

    .line 56
    const-string v0, "action_bar_title"

    invoke-static {p0, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->matchesResourceIdName(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 57
    :cond_0
    invoke-static {p0}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->parentIsToolbarV7(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 59
    .local v0, "parent":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 61
    .end local v0    # "parent":Landroid/support/v7/widget/Toolbar;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected static matchesResourceIdName(Landroid/view/View;Ljava/lang/String;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "matches"    # Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "resourceEntryName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected static parentIsToolbarV7(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 81
    invoke-static {}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->canCheckForV7Toolbar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resolveFontPath(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 188
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->mAttributeId:[I

    invoke-static {p1, p2, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->pullFontPathFromView(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "textViewFont":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->mAttributeId:[I

    invoke-static {p1, p2, v1}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->pullFontPathFromStyle(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->mAttributeId:[I

    invoke-static {p1, p2, v1}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->pullFontPathFromTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_1
    return-object v0
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 113
    if-eqz p1, :cond_0

    sget v0, Luk/co/chrisjenx/calligraphy/R$id;->calligraphy_tag_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    .line 114
    invoke-virtual {p0, p1, p2, p3}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->onViewCreatedInternal(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    sget v0, Luk/co/chrisjenx/calligraphy/R$id;->calligraphy_tag_id:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 117
    :cond_0
    return-object p1
.end method

.method onViewCreatedInternal(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 121
    instance-of v0, p1, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 125
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->isLoaded(Landroid/graphics/Typeface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    return-void

    .line 132
    :cond_0
    invoke-direct {p0, p2, p3}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->resolveFontPath(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "textViewFont":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->getStyleForTextView(Landroid/widget/TextView;)[I

    move-result-object v3

    .line 137
    .local v3, "styleForTextView":[I
    aget v4, v3, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 138
    aget v4, v3, v1

    aget v5, v3, v2

    iget-object v6, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->mAttributeId:[I

    invoke-static {p2, v4, v5, v6}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->pullFontPathFromTheme(Landroid/content/Context;II[I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_1
    aget v4, v3, v1

    iget-object v5, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->mAttributeId:[I

    invoke-static {p2, v4, v5}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->pullFontPathFromTheme(Landroid/content/Context;I[I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .end local v3    # "styleForTextView":[I
    :cond_2
    :goto_0
    const-string v3, "action_bar_title"

    invoke-static {p1, v3}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->matchesResourceIdName(Landroid/view/View;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "action_bar_subtitle"

    invoke-static {p1, v3}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->matchesResourceIdName(Landroid/view/View;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, 0x1

    .line 146
    .local v3, "deferred":Z
    :goto_2
    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->get()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v5

    invoke-static {p2, v4, v5, v0, v3}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Ljava/lang/String;Z)V

    .line 151
    .end local v0    # "textViewFont":Ljava/lang/String;
    .end local v3    # "deferred":Z
    :cond_5
    invoke-static {}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->canCheckForV7Toolbar()Z

    move-result v0

    if-eqz v0, :cond_6

    instance-of v0, p1, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_6

    .line 152
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 153
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$ToolbarLayoutListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p2, v0, v5}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$ToolbarLayoutListener;-><init>(Luk/co/chrisjenx/calligraphy/CalligraphyFactory;Landroid/content/Context;Landroid/support/v7/widget/Toolbar;Luk/co/chrisjenx/calligraphy/CalligraphyFactory$1;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 157
    .end local v0    # "toolbar":Landroid/support/v7/widget/Toolbar;
    :cond_6
    instance-of v0, p1, Luk/co/chrisjenx/calligraphy/HasTypeface;

    if-eqz v0, :cond_7

    .line 158
    invoke-direct {p0, p2, p3}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->resolveFontPath(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->getDefaultTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 159
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_8

    .line 160
    move-object v1, p1

    check-cast v1, Luk/co/chrisjenx/calligraphy/HasTypeface;

    invoke-interface {v1, v0}, Luk/co/chrisjenx/calligraphy/HasTypeface;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    .line 162
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_7
    invoke-static {}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->get()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->isCustomViewTypefaceSupport()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->get()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->isCustomViewHasTypeface(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setTypeface"

    invoke-static {v0, v3}, Luk/co/chrisjenx/calligraphy/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 164
    .local v0, "setTypeface":Ljava/lang/reflect/Method;
    invoke-direct {p0, p2, p3}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->resolveFontPath(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "fontPath":Ljava/lang/String;
    invoke-direct {p0, p2, v3}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->getDefaultTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 166
    .local v4, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_9

    if-eqz v4, :cond_9

    .line 167
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-static {p1, v0, v2}, Luk/co/chrisjenx/calligraphy/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_4

    .line 162
    .end local v0    # "setTypeface":Ljava/lang/reflect/Method;
    .end local v3    # "fontPath":Ljava/lang/String;
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    :cond_8
    :goto_3
    nop

    .line 171
    :cond_9
    :goto_4
    return-void
.end method
