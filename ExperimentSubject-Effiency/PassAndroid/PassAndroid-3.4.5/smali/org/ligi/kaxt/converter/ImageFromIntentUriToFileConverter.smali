.class public final Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;
.super Ljava/lang/Object;
.source "ImageFromIntentUriToFileConverter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nJ\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\nH\u0002J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\nH\u0002J9\u0010\u0011\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00082\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0014H\u0002\u00a2\u0006\u0002\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0017\u001a\u00020\nH\u0003J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0010\u001a\u00020\nH\u0003J\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0003J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\t\u001a\u00020\nH\u0002R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext$lib_release",
        "()Landroid/content/Context;",
        "extract",
        "",
        "uri",
        "Landroid/net/Uri;",
        "extractFile",
        "Ljava/io/File;",
        "_selectedImage",
        "getBitmap",
        "tag",
        "url",
        "getDataColumn",
        "selection",
        "selectionArgs",
        "",
        "(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;",
        "getFilePathForKITKAT",
        "selectedImage",
        "getInputStreamByURL",
        "Ljava/io/InputStream;",
        "handleKitKat",
        "isDownloadsDocument",
        "",
        "isExternalStorageDocument",
        "isMediaDocument",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x7
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->context:Landroid/content/Context;

    return-void
.end method

.method private final extractFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 13
    .param p1, "_selectedImage"    # Landroid/net/Uri;

    .prologue
    .line 162
    move-object v1, p1

    .line 163
    .local v1, "selectedImage":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v11, v0

    const/4 v0, 0x1

    const-string v3, "_display_name"

    aput-object v3, v11, v0

    check-cast v11, [Ljava/lang/Object;

    .local v11, "elements$iv":[Ljava/lang/Object;
    move-object v2, v11

    check-cast v2, [Ljava/lang/String;

    .line 164
    .local v2, "filePathColumn":[Ljava/lang/String;
    iget-object v0, p0, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 166
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "content://com.android.gallery3d.provider"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.gallery3d"

    const-string v5, "com.google.android.gallery3d"

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .end local v1    # "selectedImage":Landroid/net/Uri;
    const-string v0, "Uri.parse(selectedImage.\u2026ogle.android.gallery3d\"))"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .restart local v1    # "selectedImage":Landroid/net/Uri;
    :cond_0
    if-eqz v10, :cond_4

    .line 171
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 172
    const-string v0, "_data"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 174
    .local v9, "columnIndex":I
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "content://com.google.android.gallery3d"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const-string v0, "_display_name"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 176
    const/4 v0, -0x1

    if-eq v9, v0, :cond_6

    .line 179
    const-string v0, "image_file_name.jpg"

    invoke-direct {p0, v0, v1}, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->getBitmap(Ljava/lang/String;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 195
    .end local v9    # "columnIndex":I
    :goto_0
    return-object v0

    .line 183
    .restart local v9    # "columnIndex":I
    :cond_1
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 186
    .local v12, "filePath":Ljava/lang/String;
    if-nez v12, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_2

    .line 187
    invoke-direct {p0, v1}, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->getFilePathForKITKAT(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 189
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 190
    new-instance v0, Ljava/io/File;

    if-nez v12, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    .end local v9    # "columnIndex":I
    .end local v12    # "filePath":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_6

    .line 194
    const-string v0, "image_file_name.jpg"

    invoke-direct {p0, v0, v1}, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->getBitmap(Ljava/lang/String;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 195
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getBitmap(Ljava/lang/String;Landroid/net/Uri;)Ljava/io/File;
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 229
    iget-object v3, p0, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 231
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 235
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    .local v2, "outputFile":Ljava/io/File;
    nop

    .line 238
    :try_start_0
    invoke-direct {p0, p2}, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->getInputStreamByURL(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v3, Ljava/io/OutputStream;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v3, v6, v7, v8}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v2    # "outputFile":Ljava/io/File;
    :goto_0
    return-object v2

    .line 240
    .restart local v2    # "outputFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 241
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v4

    .line 242
    goto :goto_0
.end method

.method private final getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 116
    move-object v8, v10

    check-cast v8, Landroid/database/Cursor;

    .line 117
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v6, "_data"

    .line 118
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v6, v9, v0

    check-cast v9, [Ljava/lang/Object;

    .local v9, "elements$iv":[Ljava/lang/Object;
    move-object v2, v9

    check-cast v2, [Ljava/lang/String;

    .line 120
    .local v2, "projection":[Ljava/lang/String;
    nop

    .line 121
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 122
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 124
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 127
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 128
    .end local v7    # "column_index":I
    :cond_0
    :goto_0
    return-object v10

    .line 127
    :cond_1
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private final getFilePathForKITKAT(Landroid/net/Uri;)Ljava/lang/String;
    .locals 15
    .param p1, "selectedImage"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 201
    invoke-static/range {p1 .. p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 203
    .local v13, "wholeID":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    .end local v13    # "wholeID":Ljava/lang/String;
    :goto_0
    return-object v13

    .restart local v13    # "wholeID":Ljava/lang/String;
    :cond_0
    move-object v0, v13

    .line 206
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, ":"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v14, 0x0

    invoke-static {v0, v1, v4, v5, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 208
    check-cast v13, Ljava/lang/CharSequence;

    .end local v13    # "wholeID":Ljava/lang/String;
    const-string v0, ":"

    new-instance v1, Lkotlin/text/Regex;

    invoke-direct {v1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v13, v0}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    nop

    .line 283
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 284
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v11

    .line 285
    .local v11, "iterator$iv":Ljava/util/ListIterator;
    :cond_1
    invoke-interface {v11}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 208
    .local v10, "it":Ljava/lang/String;
    check-cast v10, Ljava/lang/CharSequence;

    .end local v10    # "it":Ljava/lang/String;
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_1

    .line 287
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v11}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v12

    .line 291
    .end local v11    # "iterator$iv":Ljava/util/ListIterator;
    :goto_2
    check-cast v12, Ljava/util/Collection;

    .line 208
    nop

    .line 292
    if-nez v12, :cond_4

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    .restart local v11    # "iterator$iv":Ljava/util/ListIterator;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 291
    .end local v11    # "iterator$iv":Ljava/util/ListIterator;
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    goto :goto_2

    .line 293
    .local v12, "thisCollection$iv":Ljava/util/Collection;
    :cond_4
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v12, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v8, v0, v1

    .line 212
    .end local v12    # "thisCollection$iv":Ljava/util/Collection;
    .local v8, "id":Ljava/lang/String;
    :goto_3
    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v7, v0

    check-cast v7, [Ljava/lang/Object;

    .local v7, "elements$iv":[Ljava/lang/Object;
    move-object v2, v7

    check-cast v2, [Ljava/lang/String;

    .line 215
    .local v2, "column":[Ljava/lang/String;
    const-string v3, "_id=?"

    .line 217
    .local v3, "sel":Ljava/lang/String;
    iget-object v0, p0, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    check-cast v4, [Ljava/lang/Object;

    .line 295
    check-cast v4, [Ljava/lang/String;

    .line 217
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 219
    .local v9, "innerCursor":Landroid/database/Cursor;
    if-nez v9, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 221
    .local v6, "columnIndex":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 222
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 210
    .end local v2    # "column":[Ljava/lang/String;
    .end local v3    # "sel":Ljava/lang/String;
    .end local v6    # "columnIndex":I
    .end local v7    # "elements$iv":[Ljava/lang/Object;
    .end local v8    # "id":Ljava/lang/String;
    .end local v9    # "innerCursor":Landroid/database/Cursor;
    .restart local v13    # "wholeID":Ljava/lang/String;
    :cond_7
    const-string v0, "wholeID"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v13

    .restart local v8    # "id":Ljava/lang/String;
    goto :goto_3

    .line 224
    .end local v13    # "wholeID":Ljava/lang/String;
    .restart local v2    # "column":[Ljava/lang/String;
    .restart local v3    # "sel":Ljava/lang/String;
    .restart local v6    # "columnIndex":I
    .restart local v7    # "elements$iv":[Ljava/lang/Object;
    .restart local v9    # "innerCursor":Landroid/database/Cursor;
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private final getInputStreamByURL(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 5
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.google.android.gallery3d"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "context.contentResolver.openInputStream(url)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "URL(url.toString()).openStream()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final handleKitKat(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 58
    invoke-static/range {p1 .. p2}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 60
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 61
    invoke-static/range {p2 .. p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "docId":Ljava/lang/String;
    check-cast v3, Ljava/lang/CharSequence;

    .end local v3    # "docId":Ljava/lang/String;
    const-string v13, ":"

    new-instance v14, Lkotlin/text/Regex;

    invoke-direct {v14, v13}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v14, v3, v13}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v13

    nop

    .line 258
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2

    .line 259
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 260
    .local v6, "iterator$iv":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 261
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "p1":Ljava/lang/String;
    check-cast v7, Ljava/lang/CharSequence;

    .line 62
    .end local v7    # "p1":Ljava/lang/String;
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-nez v14, :cond_1

    const/4 v14, 0x1

    :goto_0
    if-nez v14, :cond_0

    .line 262
    check-cast v13, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/util/ListIterator;->nextIndex()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v11

    .line 266
    .end local v6    # "iterator$iv":Ljava/util/ListIterator;
    :goto_1
    check-cast v11, Ljava/util/Collection;

    .line 62
    nop

    .line 267
    if-nez v11, :cond_3

    new-instance v13, Lkotlin/TypeCastException;

    const-string v14, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v13, v14}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 62
    .restart local v6    # "iterator$iv":Ljava/util/ListIterator;
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 266
    .end local v6    # "iterator$iv":Ljava/util/ListIterator;
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    goto :goto_1

    .line 268
    .local v11, "thisCollection$iv":Ljava/util/Collection;
    :cond_3
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-interface {v11, v13}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_4

    new-instance v13, Lkotlin/TypeCastException;

    const-string v14, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v13, v14}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 62
    :cond_4
    check-cast v10, [Ljava/lang/String;

    .line 63
    .local v10, "split":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v12, v10, v13

    .line 65
    .local v12, "type":Ljava/lang/String;
    const-string v13, "primary"

    const/4 v14, 0x1

    invoke-static {v13, v12, v14}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 66
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 94
    .end local v10    # "split":[Ljava/lang/String;
    .end local v11    # "thisCollection$iv":Ljava/util/Collection;
    .end local v12    # "type":Ljava/lang/String;
    :goto_2
    return-object v13

    .line 70
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 72
    invoke-static/range {p2 .. p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "id":Ljava/lang/String;
    const-string v13, "content://downloads/public_downloads"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    if-nez v14, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 75
    .local v2, "contentUri":Landroid/net/Uri;
    const-string v13, "contentUri"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v13, v14}, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 76
    .end local v2    # "contentUri":Landroid/net/Uri;
    .end local v5    # "id":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 77
    invoke-static/range {p2 .. p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .restart local v3    # "docId":Ljava/lang/String;
    check-cast v3, Ljava/lang/CharSequence;

    .end local v3    # "docId":Ljava/lang/String;
    const-string v13, ":"

    new-instance v14, Lkotlin/text/Regex;

    invoke-direct {v14, v13}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v14, v3, v13}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v13

    nop

    .line 269
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_a

    .line 270
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 271
    .restart local v6    # "iterator$iv":Ljava/util/ListIterator;
    :cond_8
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 272
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .restart local v7    # "p1":Ljava/lang/String;
    check-cast v7, Ljava/lang/CharSequence;

    .line 78
    .end local v7    # "p1":Ljava/lang/String;
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-nez v14, :cond_9

    const/4 v14, 0x1

    :goto_3
    if-nez v14, :cond_8

    .line 273
    check-cast v13, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/util/ListIterator;->nextIndex()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v11

    .line 277
    .end local v6    # "iterator$iv":Ljava/util/ListIterator;
    :goto_4
    check-cast v11, Ljava/util/Collection;

    .line 78
    nop

    .line 278
    if-nez v11, :cond_b

    new-instance v13, Lkotlin/TypeCastException;

    const-string v14, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v13, v14}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 78
    .restart local v6    # "iterator$iv":Ljava/util/ListIterator;
    :cond_9
    const/4 v14, 0x0

    goto :goto_3

    .line 277
    .end local v6    # "iterator$iv":Ljava/util/ListIterator;
    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    goto :goto_4

    .line 279
    .restart local v11    # "thisCollection$iv":Ljava/util/Collection;
    :cond_b
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-interface {v11, v13}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_c

    new-instance v13, Lkotlin/TypeCastException;

    const-string v14, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v13, v14}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 78
    :cond_c
    check-cast v10, [Ljava/lang/String;

    .line 79
    .restart local v10    # "split":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v12, v10, v13

    .line 81
    .restart local v12    # "type":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    .line 85
    :cond_d
    const/4 v2, 0x0

    .line 88
    .restart local v2    # "contentUri":Landroid/net/Uri;
    :goto_5
    const-string v8, "_id=?"

    .line 89
    .local v8, "selection":Ljava/lang/String;
    const/4 v13, 0x1

    new-array v4, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x1

    aget-object v14, v10, v14

    aput-object v14, v4, v13

    check-cast v4, [Ljava/lang/Object;

    .local v4, "elements$iv":[Ljava/lang/Object;
    move-object v9, v4

    check-cast v9, [Ljava/lang/String;

    .line 91
    .local v9, "selectionArgs":[Ljava/lang/String;
    if-eqz v2, :cond_e

    .line 92
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v8, v9}, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 81
    .end local v2    # "contentUri":Landroid/net/Uri;
    .end local v4    # "elements$iv":[Ljava/lang/Object;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    :sswitch_0
    const-string v13, "image"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 82
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_5

    .line 81
    :sswitch_1
    const-string v13, "video"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 83
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_5

    .line 81
    :sswitch_2
    const-string v13, "audio"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 84
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_5

    .line 94
    .end local v10    # "split":[Ljava/lang/String;
    .end local v11    # "thisCollection$iv":Ljava/util/Collection;
    .end local v12    # "type":Ljava/lang/String;
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x58d9bd6 -> :sswitch_2
        0x5faa95b -> :sswitch_0
        0x6b0147b -> :sswitch_1
    .end sparse-switch
.end method

.method private final isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 148
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 139
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 157
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final extract(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const-string v3, "uri"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 34
    .local v1, "result":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 35
    iget-object v3, p0, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->context:Landroid/content/Context;

    invoke-direct {p0, v3, p1}, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->handleKitKat(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 38
    :cond_0
    if-nez v1, :cond_1

    const-string v3, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    iget-object v3, p0, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->context:Landroid/content/Context;

    invoke-direct {p0, v3, p1, v2, v2}, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    :cond_1
    if-nez v1, :cond_2

    .line 43
    invoke-direct {p0, p1}, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->extractFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 44
    .local v0, "extract":Ljava/io/File;
    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 49
    .end local v0    # "extract":Ljava/io/File;
    :cond_2
    if-nez v1, :cond_3

    const-string v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 53
    :cond_3
    return-object v1
.end method

.method public final getContext$lib_release()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->context:Landroid/content/Context;

    return-object v0
.end method
