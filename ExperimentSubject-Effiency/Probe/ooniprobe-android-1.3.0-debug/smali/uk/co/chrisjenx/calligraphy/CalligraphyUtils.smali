.class public final Luk/co/chrisjenx/calligraphy/CalligraphyUtils;
.super Ljava/lang/Object;
.source "CalligraphyUtils.java"


# static fields
.field public static final ANDROID_ATTR_TEXT_APPEARANCE:[I

.field private static sAppCompatViewCheck:Ljava/lang/Boolean;

.field private static sToolbarCheck:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010034

    aput v2, v0, v1

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->ANDROID_ATTR_TEXT_APPEARANCE:[I

    .line 315
    const/4 v0, 0x0

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->sToolbarCheck:Ljava/lang/Boolean;

    .line 316
    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->sAppCompatViewCheck:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    return-void
.end method

.method static applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "config"    # Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    .line 119
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Z)V

    .line 120
    return-void
.end method

.method public static applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "config"    # Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
    .param p3, "textViewFont"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Ljava/lang/String;Z)V

    .line 139
    return-void
.end method

.method static applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "config"    # Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
    .param p3, "textViewFont"    # Ljava/lang/String;
    .param p4, "deferred"    # Z

    .line 142
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1, p3, p4}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    return-void

    .line 146
    :cond_1
    invoke-static {p0, p1, p2, p4}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Z)V

    .line 147
    return-void

    .line 142
    :cond_2
    :goto_0
    return-void
.end method

.method static applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "config"    # Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
    .param p3, "deferred"    # Z

    .line 123
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p2}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->isFontSet()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 125
    :cond_1
    invoke-virtual {p2}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->getFontPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Z)Z

    .line 126
    return-void

    .line 123
    :cond_2
    :goto_0
    return-void
.end method

.method public static applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "deferred"    # Z

    .line 112
    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 114
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-static {v0, p2}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 115
    .local v1, "typeface":Landroid/graphics/Typeface;
    invoke-static {p1, v1, p3}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/widget/TextView;Landroid/graphics/Typeface;Z)Z

    move-result v2

    return v2

    .line 112
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static applyFontToTextView(Landroid/widget/TextView;Landroid/graphics/Typeface;)Z
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 56
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/widget/TextView;Landroid/graphics/Typeface;Z)Z

    move-result v0

    return v0
.end method

.method public static applyFontToTextView(Landroid/widget/TextView;Landroid/graphics/Typeface;Z)Z
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "deferred"    # Z

    .line 75
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    const/4 v1, 0x1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    if-eqz p2, :cond_1

    .line 79
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyTypefaceSpan(Ljava/lang/CharSequence;Landroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 80
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils$1;

    invoke-direct {v0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils$1;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    :cond_1
    return v1

    .line 75
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static applyTypefaceSpan(Ljava/lang/CharSequence;Landroid/graphics/Typeface;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 35
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 36
    instance-of v0, p0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    .line 39
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->getSpan(Landroid/graphics/Typeface;)Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 41
    :cond_1
    return-object p0
.end method

.method static canAddV7AppCompatViews()Z
    .locals 2

    .line 341
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->sAppCompatViewCheck:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 343
    :try_start_0
    const-string v0, "android.support.v7.widget.AppCompatTextView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 344
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->sAppCompatViewCheck:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->sAppCompatViewCheck:Ljava/lang/Boolean;

    .line 349
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->sAppCompatViewCheck:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static canCheckForV7Toolbar()Z
    .locals 2

    .line 324
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->sToolbarCheck:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 326
    :try_start_0
    const-string v0, "android.support.v7.widget.Toolbar"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 327
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->sToolbarCheck:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->sToolbarCheck:Ljava/lang/Boolean;

    .line 332
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->sToolbarCheck:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static pullFontPathFromStyle(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "attributeId"    # [I

    .line 185
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 188
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v1, :cond_2

    .line 191
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "fontFromAttribute":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 193
    nop

    .line 198
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    .line 192
    .end local v2    # "fontFromAttribute":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 195
    :catch_0
    move-exception v2

    .line 198
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    :cond_2
    return-object v0

    .line 186
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    :cond_3
    :goto_1
    return-object v0
.end method

.method static pullFontPathFromTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "attributeId"    # [I

    .line 213
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 217
    :cond_0
    const/4 v1, -0x1

    .line 218
    .local v1, "textAppearanceId":I
    sget-object v2, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->ANDROID_ATTR_TEXT_APPEARANCE:[I

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 219
    .local v2, "typedArrayAttr":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 221
    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    .line 226
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 222
    :catch_0
    move-exception v3

    .line 224
    .local v3, "ignored":Ljava/lang/Exception;
    nop

    .line 226
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 230
    .end local v3    # "ignored":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 231
    .local v4, "textAppearanceAttrs":Landroid/content/res/TypedArray;
    if-eqz v4, :cond_2

    .line 233
    :try_start_1
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_1
    move-exception v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 234
    :catch_1
    move-exception v3

    .line 236
    .local v3, "ignore":Ljava/lang/Exception;
    nop

    .line 238
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 241
    .end local v3    # "ignore":Ljava/lang/Exception;
    :cond_2
    return-object v0

    .line 214
    .end local v1    # "textAppearanceId":I
    .end local v2    # "typedArrayAttr":Landroid/content/res/TypedArray;
    .end local v4    # "textAppearanceAttrs":Landroid/content/res/TypedArray;
    :cond_3
    :goto_1
    return-object v0
.end method

.method static pullFontPathFromTheme(Landroid/content/Context;II[I)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "styleAttrId"    # I
    .param p2, "subStyleAttrId"    # I
    .param p3, "attributeId"    # [I

    .line 282
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 286
    .local v2, "theme":Landroid/content/res/Resources$Theme;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 288
    .local v3, "value":Landroid/util/TypedValue;
    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 289
    const/4 v5, -0x1

    .line 290
    .local v5, "subStyleResId":I
    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    new-array v4, v4, [I

    const/4 v7, 0x0

    aput p2, v4, v7

    invoke-virtual {v2, v6, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 292
    .local v4, "parentTypedArray":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v4, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v5, v6

    .line 297
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    nop

    .line 300
    if-ne v5, v0, :cond_1

    return-object v1

    .line 301
    :cond_1
    invoke-virtual {p0, v5, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 302
    .local v0, "subTypedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_2

    .line 304
    :try_start_1
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1

    .line 305
    :catch_0
    move-exception v6

    .line 307
    .local v6, "ignore":Ljava/lang/Exception;
    nop

    .line 309
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    .line 312
    .end local v6    # "ignore":Ljava/lang/Exception;
    :cond_2
    return-object v1

    .line 297
    .end local v0    # "subTypedArray":Landroid/content/res/TypedArray;
    :catchall_1
    move-exception v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 293
    :catch_1
    move-exception v0

    .line 295
    .local v0, "ignore":Ljava/lang/Exception;
    nop

    .line 297
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    .line 283
    .end local v0    # "ignore":Ljava/lang/Exception;
    .end local v2    # "theme":Landroid/content/res/Resources$Theme;
    .end local v3    # "value":Landroid/util/TypedValue;
    .end local v4    # "parentTypedArray":Landroid/content/res/TypedArray;
    .end local v5    # "subStyleResId":I
    :cond_3
    :goto_0
    return-object v1
.end method

.method static pullFontPathFromTheme(Landroid/content/Context;I[I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "styleAttrId"    # I
    .param p2, "attributeId"    # [I

    .line 253
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 257
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 259
    .local v2, "value":Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 260
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 262
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .local v0, "font":Ljava/lang/String;
    nop

    .line 268
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .end local v0    # "font":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 264
    :catch_0
    move-exception v4

    .line 266
    .local v4, "ignore":Ljava/lang/Exception;
    nop

    .line 268
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 254
    .end local v1    # "theme":Landroid/content/res/Resources$Theme;
    .end local v2    # "value":Landroid/util/TypedValue;
    .end local v3    # "typedArray":Landroid/content/res/TypedArray;
    .end local v4    # "ignore":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v0
.end method

.method static pullFontPathFromView(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "attributeId"    # [I

    .line 158
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .local v1, "attributeName":Ljava/lang/String;
    nop

    .line 169
    const/4 v2, -0x1

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 170
    .local v2, "stringResourceId":I
    if-lez v2, :cond_1

    .line 171
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    nop

    .line 172
    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 164
    .end local v1    # "attributeName":Ljava/lang/String;
    .end local v2    # "stringResourceId":I
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    return-object v0

    .line 159
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    :goto_1
    return-object v0
.end method
