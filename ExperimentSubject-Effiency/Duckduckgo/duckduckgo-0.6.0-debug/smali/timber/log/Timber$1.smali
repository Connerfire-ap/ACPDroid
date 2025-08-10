.class final Ltimber/log/Timber$1;
.super Ltimber/log/Timber$Tree;
.source "Timber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltimber/log/Timber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ltimber/log/Timber$Tree;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 245
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 247
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 248
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 261
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 263
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 264
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 253
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 255
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 256
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 317
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 319
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 320
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 333
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 335
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 336
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 325
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 327
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 328
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 269
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 271
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 272
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public i(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 285
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 287
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 288
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->i(Ljava/lang/Throwable;)V

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 277
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 279
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 280
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method protected log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .line 389
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Missing override for log method."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 365
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 367
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 368
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/Throwable;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 381
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 383
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 384
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->log(ILjava/lang/Throwable;)V

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 373
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 375
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 376
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2, p3, p4}, Ltimber/log/Timber$Tree;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 221
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 223
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 224
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 237
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 239
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 240
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->v(Ljava/lang/Throwable;)V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 229
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 231
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 232
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 293
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 295
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 296
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 309
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 311
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 312
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->w(Ljava/lang/Throwable;)V

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 301
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 303
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 304
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 341
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 343
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 344
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public wtf(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 357
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 359
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 360
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->wtf(Ljava/lang/Throwable;)V

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public varargs wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 349
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 351
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 352
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method
